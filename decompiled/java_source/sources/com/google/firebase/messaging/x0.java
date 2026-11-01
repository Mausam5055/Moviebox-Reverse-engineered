package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
final class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f32176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f32178c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f32180e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final ArrayDeque f32179d = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f32181f = false;

    private x0(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f32176a = sharedPreferences;
        this.f32177b = str;
        this.f32178c = str2;
        this.f32180e = executor;
    }

    private boolean c(boolean z10) {
        if (z10 && !this.f32181f) {
            j();
        }
        return z10;
    }

    static x0 d(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        x0 x0Var = new x0(sharedPreferences, str, str2, executor);
        x0Var.e();
        return x0Var;
    }

    private void e() {
        synchronized (this.f32179d) {
            try {
                this.f32179d.clear();
                String string = this.f32176a.getString(this.f32177b, "");
                if (!TextUtils.isEmpty(string) && string.contains(this.f32178c)) {
                    String[] strArrSplit = string.split(this.f32178c, -1);
                    if (strArrSplit.length == 0) {
                        Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    }
                    for (String str : strArrSplit) {
                        if (!TextUtils.isEmpty(str)) {
                            this.f32179d.add(str);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        synchronized (this.f32179d) {
            this.f32176a.edit().putString(this.f32177b, h()).commit();
        }
    }

    private void j() {
        this.f32180e.execute(new Runnable() { // from class: com.google.firebase.messaging.w0
            @Override // java.lang.Runnable
            public final void run() {
                this.f32174a.i();
            }
        });
    }

    public boolean b(String str) {
        boolean zC;
        if (TextUtils.isEmpty(str) || str.contains(this.f32178c)) {
            return false;
        }
        synchronized (this.f32179d) {
            zC = c(this.f32179d.add(str));
        }
        return zC;
    }

    public String f() {
        String str;
        synchronized (this.f32179d) {
            str = (String) this.f32179d.peek();
        }
        return str;
    }

    public boolean g(Object obj) {
        boolean zC;
        synchronized (this.f32179d) {
            zC = c(this.f32179d.remove(obj));
        }
        return zC;
    }

    public String h() {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = this.f32179d.iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
            sb2.append(this.f32178c);
        }
        return sb2.toString();
    }
}
