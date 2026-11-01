package com.cloud.hisavana.net.impl;

import okhttp3.Headers;

/* JADX INFO: loaded from: classes.dex */
public abstract class StringCallback extends HttpCallbackImpl {
    protected StringCallback() {
    }

    public StringCallback(boolean z10) {
        super(z10);
    }

    public static String w(byte[] bArr, String str) {
        String str2 = bArr == null ? null : new String(bArr, str);
        if (str2 == null) {
            return str2;
        }
        try {
            return str2.startsWith("\ufeff") ? str2.substring(1) : str2;
        } catch (Exception unused) {
            return str2;
        }
    }

    @Override // com.cloud.hisavana.net.impl.HttpCallbackImpl
    public void i(final int i11, byte[] bArr, final Throwable th2) {
        try {
            final String strW = w(bArr, "UTF-8");
            q(new Runnable() { // from class: com.cloud.hisavana.net.impl.StringCallback.3
                @Override // java.lang.Runnable
                public void run() {
                    StringCallback.this.x(i11, strW, th2);
                }
            });
        } catch (Exception e11) {
            q(new Runnable() { // from class: com.cloud.hisavana.net.impl.StringCallback.4
                @Override // java.lang.Runnable
                public void run() {
                    StringCallback.this.x(i11, null, e11.getCause());
                }
            });
        }
    }

    @Override // com.cloud.hisavana.net.impl.HttpCallbackImpl
    public void l(Headers headers) {
    }

    @Override // com.cloud.hisavana.net.impl.HttpCallbackImpl
    public void n(final int i11, byte[] bArr) {
        try {
            final String strW = w(bArr, "UTF-8");
            q(new Runnable() { // from class: com.cloud.hisavana.net.impl.StringCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    StringCallback.this.y(i11, strW);
                }
            });
        } catch (Exception e11) {
            q(new Runnable() { // from class: com.cloud.hisavana.net.impl.StringCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    StringCallback.this.x(i11, null, e11.getCause());
                }
            });
        }
    }

    public abstract void x(int i11, String str, Throwable th2);

    public abstract void y(int i11, String str);
}
