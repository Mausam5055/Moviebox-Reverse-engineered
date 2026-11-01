package com.alibaba.fastjson;

import a5.j1;
import a5.m0;
import a5.o0;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c implements m0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f18142c = "/**/";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f18144b = new ArrayList();

    public c() {
    }

    public c(String str) {
        this.f18143a = str;
    }

    @Override // a5.m0
    public void a(o0 o0Var, Object obj, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        int i12 = SerializerFeature.BrowserSecure.mask;
        if ((i11 & i12) != 0 || j1Var.p(i12)) {
            j1Var.write(f18142c);
        }
        j1Var.write(this.f18143a);
        j1Var.write(40);
        for (int i13 = 0; i13 < this.f18144b.size(); i13++) {
            if (i13 != 0) {
                j1Var.write(44);
            }
            o0Var.A(this.f18144b.get(i13));
        }
        j1Var.write(41);
    }

    public void b(Object obj) {
        this.f18144b.add(obj);
    }

    public String toString() {
        return a.toJSONString(this);
    }
}
