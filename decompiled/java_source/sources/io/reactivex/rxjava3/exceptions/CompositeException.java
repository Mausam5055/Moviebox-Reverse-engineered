package io.reactivex.rxjava3.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    static final class ExceptionOverview extends RuntimeException {
        private static final long serialVersionUID = 3875212506787802066L;

        ExceptionOverview(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    static abstract class a {
        a() {
        }

        abstract a a(Object obj);
    }

    static final class b extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final PrintStream f65318a;

        b(PrintStream printStream) {
            this.f65318a = printStream;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.reactivex.rxjava3.exceptions.CompositeException.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(Object obj) {
            this.f65318a.print(obj);
            return this;
        }
    }

    static final class c extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final PrintWriter f65319a;

        c(PrintWriter printWriter) {
            this.f65319a = printWriter;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.reactivex.rxjava3.exceptions.CompositeException.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public c a(Object obj) {
            this.f65319a.print(obj);
            return this;
        }
    }

    public CompositeException(Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (iterable != null) {
            for (Throwable th2 : iterable) {
                if (th2 instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th2).getExceptions());
                } else if (th2 != null) {
                    linkedHashSet.add(th2);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (linkedHashSet.isEmpty()) {
            throw new IllegalArgumentException("errors is empty");
        }
        List<Throwable> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(linkedHashSet));
        this.exceptions = listUnmodifiableList;
        this.message = listUnmodifiableList.size() + " exceptions occurred. ";
    }

    public CompositeException(Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    private void appendStackTrace(a aVar, Throwable th2, String str) {
        aVar.a(str).a(th2).a('\n');
        for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
            aVar.a("\t\tat ").a(stackTraceElement).a('\n');
        }
        if (th2.getCause() != null) {
            aVar.a("\tCaused by: ");
            appendStackTrace(aVar, th2.getCause(), "");
        }
    }

    private void printStackTrace(a aVar) {
        aVar.a(this).a("\n");
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            aVar.a("\tat ").a(stackTraceElement).a("\n");
        }
        int i11 = 1;
        for (Throwable th2 : this.exceptions) {
            aVar.a("  ComposedException ").a(Integer.valueOf(i11)).a(" :\n");
            appendStackTrace(aVar, th2, "\t");
            i11++;
        }
        aVar.a("\n");
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        int i11;
        try {
            if (this.cause == null) {
                String property = System.getProperty("line.separator");
                if (this.exceptions.size() > 1) {
                    IdentityHashMap identityHashMap = new IdentityHashMap();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Multiple exceptions (");
                    sb2.append(this.exceptions.size());
                    sb2.append(")");
                    sb2.append(property);
                    for (Throwable cause : this.exceptions) {
                        int i12 = 0;
                        while (cause != null) {
                            for (int i13 = 0; i13 < i12; i13++) {
                                sb2.append("  ");
                            }
                            sb2.append("|-- ");
                            sb2.append(cause.getClass().getCanonicalName());
                            sb2.append(": ");
                            String message = cause.getMessage();
                            if (message == null || !message.contains(property)) {
                                sb2.append(message);
                                sb2.append(property);
                            } else {
                                sb2.append(property);
                                for (String str : message.split(property)) {
                                    for (int i14 = 0; i14 < i12 + 2; i14++) {
                                        sb2.append("  ");
                                    }
                                    sb2.append(str);
                                    sb2.append(property);
                                }
                            }
                            int i15 = 0;
                            while (true) {
                                i11 = i12 + 2;
                                if (i15 >= i11) {
                                    break;
                                }
                                sb2.append("  ");
                                i15++;
                            }
                            StackTraceElement[] stackTrace = cause.getStackTrace();
                            if (stackTrace.length > 0) {
                                sb2.append("at ");
                                sb2.append(stackTrace[0]);
                                sb2.append(property);
                            }
                            if (identityHashMap.containsKey(cause)) {
                                Throwable cause2 = cause.getCause();
                                if (cause2 == null) {
                                    break;
                                }
                                for (int i16 = 0; i16 < i11; i16++) {
                                    sb2.append("  ");
                                }
                                sb2.append("|-- ");
                                sb2.append("(cause not expanded again) ");
                                sb2.append(cause2.getClass().getCanonicalName());
                                sb2.append(": ");
                                sb2.append(cause2.getMessage());
                                sb2.append(property);
                                break;
                            }
                            identityHashMap.put(cause, Boolean.TRUE);
                            cause = cause.getCause();
                            i12++;
                        }
                    }
                    this.cause = new ExceptionOverview(sb2.toString().trim());
                } else {
                    this.cause = this.exceptions.get(0);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.cause;
    }

    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        printStackTrace(new b(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace(new c(printWriter));
    }

    public int size() {
        return this.exceptions.size();
    }
}
