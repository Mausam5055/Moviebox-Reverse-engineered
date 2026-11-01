package com.transsion.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final char[] f46075f = "0123456789ABCDEF".toCharArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f46079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f46080e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f46077b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f46078c = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.transsion.json.b.p f46076a = new com.transsion.json.b.p(w.a());

    public j a(boolean z10) {
        this.f46079d = z10;
        return this;
    }

    public j b(String... strArr) {
        for (String str : strArr) {
            e(str);
        }
        return this;
    }

    public String c(Object obj) {
        return d(obj, t.SHALLOW, new s(new StringBuilder()));
    }

    protected String d(Object obj, t tVar, p pVar) {
        h hVarQ = h.q();
        hVarQ.k(this.f46080e);
        hVarQ.m(this.f46079d);
        hVarQ.g(pVar);
        hVarQ.h(tVar);
        hVarQ.e(this.f46076a);
        hVarQ.l(this.f46077b);
        hVarQ.s(this.f46078c);
        try {
            String strY = hVarQ.y();
            if (strY == null || strY.trim().equals("")) {
                hVarQ.j(obj);
            } else {
                hVarQ.H();
                hVarQ.u(strY);
                hVarQ.j(obj);
                hVarQ.D();
            }
            return hVarQ.v().toString();
        } finally {
            h.c();
        }
    }

    protected void e(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            r rVar = new r(str.substring(0, iLastIndexOf), true);
            if (!rVar.c()) {
                this.f46078c.add(rVar);
            }
        }
        this.f46078c.add(new r(str, false));
    }
}
