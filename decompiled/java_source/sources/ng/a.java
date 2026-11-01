package ng;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements h8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ThreadLocal f70451a = new C0850a();

    /* JADX INFO: renamed from: ng.a$a, reason: collision with other inner class name */
    public static final class C0850a extends ThreadLocal {
        C0850a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        }
    }

    @Override // h8.b
    public String a(int i11, long j11) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) this.f70451a.get();
        if (simpleDateFormat != null) {
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
        }
        if (simpleDateFormat == null) {
            return UUID.randomUUID() + ".log";
        }
        return simpleDateFormat.format(new Date(j11)) + ".log";
    }

    @Override // h8.b
    public boolean b() {
        return true;
    }
}
