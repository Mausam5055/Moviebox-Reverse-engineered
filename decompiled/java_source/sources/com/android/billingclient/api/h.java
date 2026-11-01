package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private volatile x0 f19057a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f19058b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile v f19059c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile boolean f19060d;

        /* synthetic */ a(Context context, r1 r1Var) {
            this.f19058b = context;
        }

        public h a() {
            if (this.f19058b == null) {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
            if (this.f19059c == null) {
                if (this.f19060d) {
                    return new i(null, this.f19058b, null, null);
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            if (this.f19057a != null) {
                return this.f19059c != null ? new i(null, this.f19057a, this.f19058b, this.f19059c, null, null, null) : new i(null, this.f19057a, this.f19058b, null, null, null);
            }
            throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
        }

        public a b() {
            v0 v0Var = new v0(null);
            v0Var.a();
            this.f19057a = v0Var.b();
            return this;
        }

        public a c(v vVar) {
            this.f19059c = vVar;
            return this;
        }
    }

    public static a c(Context context) {
        return new a(context, null);
    }

    public abstract boolean a();

    public abstract n b(Activity activity, m mVar);

    public abstract void d(w wVar, s sVar);

    public abstract void e(x xVar, u uVar);

    public abstract void f(j jVar);
}
