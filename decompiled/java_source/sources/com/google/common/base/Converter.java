package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Converter implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient Converter f30203a;
    private final boolean handleNullAutomatically;

    private static final class ConverterComposition<A, B, C> extends Converter implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter first;
        final Converter second;

        ConverterComposition(Converter converter, Converter converter2) {
            this.first = converter;
            this.second = converter2;
        }

        @Override // com.google.common.base.Converter
        A correctedDoBackward(C c11) {
            return (A) this.first.correctedDoBackward(this.second.correctedDoBackward(c11));
        }

        @Override // com.google.common.base.Converter
        C correctedDoForward(A a11) {
            return (C) this.second.correctedDoForward(this.first.correctedDoForward(a11));
        }

        @Override // com.google.common.base.Converter
        protected A doBackward(C c11) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        protected C doForward(A a11) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter, com.google.common.base.f
        public boolean equals(Object obj) {
            if (!(obj instanceof ConverterComposition)) {
                return false;
            }
            ConverterComposition converterComposition = (ConverterComposition) obj;
            return this.first.equals(converterComposition.first) && this.second.equals(converterComposition.second);
        }

        public int hashCode() {
            return (this.first.hashCode() * 31) + this.second.hashCode();
        }

        public String toString() {
            return this.first + ".andThen(" + this.second + ")";
        }
    }

    private static final class FunctionBasedConverter<A, B> extends Converter implements Serializable {
        private final f backwardFunction;
        private final f forwardFunction;

        private FunctionBasedConverter(f fVar, f fVar2) {
            this.forwardFunction = (f) m.o(fVar);
            this.backwardFunction = (f) m.o(fVar2);
        }

        /* synthetic */ FunctionBasedConverter(f fVar, f fVar2, a aVar) {
            this(fVar, fVar2);
        }

        @Override // com.google.common.base.Converter
        protected A doBackward(B b11) {
            return (A) this.backwardFunction.apply(b11);
        }

        @Override // com.google.common.base.Converter
        protected B doForward(A a11) {
            return (B) this.forwardFunction.apply(a11);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.f
        public boolean equals(Object obj) {
            if (!(obj instanceof FunctionBasedConverter)) {
                return false;
            }
            FunctionBasedConverter functionBasedConverter = (FunctionBasedConverter) obj;
            return this.forwardFunction.equals(functionBasedConverter.forwardFunction) && this.backwardFunction.equals(functionBasedConverter.backwardFunction);
        }

        public int hashCode() {
            return (this.forwardFunction.hashCode() * 31) + this.backwardFunction.hashCode();
        }

        public String toString() {
            return "Converter.from(" + this.forwardFunction + ", " + this.backwardFunction + ")";
        }
    }

    private static final class IdentityConverter<T> extends Converter implements Serializable {
        static final Converter INSTANCE = new IdentityConverter();
        private static final long serialVersionUID = 0;

        private IdentityConverter() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Converter
        <S> Converter doAndThen(Converter converter) {
            return (Converter) m.p(converter, "otherConverter");
        }

        @Override // com.google.common.base.Converter
        protected T doBackward(T t11) {
            return t11;
        }

        @Override // com.google.common.base.Converter
        protected T doForward(T t11) {
            return t11;
        }

        @Override // com.google.common.base.Converter
        public IdentityConverter<T> reverse() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    private static final class ReverseConverter<A, B> extends Converter implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter original;

        ReverseConverter(Converter converter) {
            this.original = converter;
        }

        @Override // com.google.common.base.Converter
        B correctedDoBackward(A a11) {
            return (B) this.original.correctedDoForward(a11);
        }

        @Override // com.google.common.base.Converter
        A correctedDoForward(B b11) {
            return (A) this.original.correctedDoBackward(b11);
        }

        @Override // com.google.common.base.Converter
        protected B doBackward(A a11) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        protected A doForward(B b11) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter, com.google.common.base.f
        public boolean equals(Object obj) {
            if (obj instanceof ReverseConverter) {
                return this.original.equals(((ReverseConverter) obj).original);
            }
            return false;
        }

        public int hashCode() {
            return ~this.original.hashCode();
        }

        @Override // com.google.common.base.Converter
        public Converter reverse() {
            return this.original;
        }

        public String toString() {
            return this.original + ".reverse()";
        }
    }

    class a implements Iterable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Iterable f30204a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Converter f30205b;

        /* JADX INFO: renamed from: com.google.common.base.Converter$a$a, reason: collision with other inner class name */
        class C0400a implements Iterator {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Iterator f30206a;

            C0400a() {
                this.f30206a = a.this.f30204a.iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30206a.hasNext();
            }

            @Override // java.util.Iterator
            public Object next() {
                return a.this.f30205b.convert(this.f30206a.next());
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f30206a.remove();
            }
        }

        a(Converter converter, Iterable iterable) {
            this.f30204a = iterable;
            this.f30205b = converter;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return new C0400a();
        }
    }

    protected Converter() {
        this(true);
    }

    Converter(boolean z10) {
        this.handleNullAutomatically = z10;
    }

    private Object a(Object obj) {
        return doBackward(i.a(obj));
    }

    private Object b(Object obj) {
        return doForward(i.a(obj));
    }

    public static <A, B> Converter from(f fVar, f fVar2) {
        return new FunctionBasedConverter(fVar, fVar2, null);
    }

    public static <T> Converter identity() {
        return (IdentityConverter) IdentityConverter.INSTANCE;
    }

    public final <C> Converter andThen(Converter converter) {
        return doAndThen(converter);
    }

    @Override // com.google.common.base.f
    @Deprecated
    public final Object apply(Object obj) {
        return convert(obj);
    }

    public final Object convert(Object obj) {
        return correctedDoForward(obj);
    }

    public Iterable<Object> convertAll(Iterable<Object> iterable) {
        m.p(iterable, "fromIterable");
        return new a(this, iterable);
    }

    Object correctedDoBackward(Object obj) {
        if (!this.handleNullAutomatically) {
            return a(obj);
        }
        if (obj == null) {
            return null;
        }
        return m.o(doBackward(obj));
    }

    Object correctedDoForward(Object obj) {
        if (!this.handleNullAutomatically) {
            return b(obj);
        }
        if (obj == null) {
            return null;
        }
        return m.o(doForward(obj));
    }

    <C> Converter doAndThen(Converter converter) {
        return new ConverterComposition(this, (Converter) m.o(converter));
    }

    protected abstract Object doBackward(Object obj);

    protected abstract Object doForward(Object obj);

    @Override // com.google.common.base.f
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Converter reverse() {
        Converter converter = this.f30203a;
        if (converter != null) {
            return converter;
        }
        ReverseConverter reverseConverter = new ReverseConverter(this);
        this.f30203a = reverseConverter;
        return reverseConverter;
    }
}
