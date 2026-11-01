package com.mbridge.msdk.mbsignalcommon.mapping;

/* JADX INFO: loaded from: classes5.dex */
public class a extends Throwable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class<?> f36499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f36500b;

    public a(Exception exc) {
        super(exc);
    }

    public a(String str) {
        super(str);
    }

    public void a(Class<?> cls) {
        this.f36499a = cls;
    }

    public void a(String str) {
        this.f36500b = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        if (getCause() == null) {
            return super.toString();
        }
        return getClass().getName() + ": " + getCause();
    }
}
