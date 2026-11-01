package o5;

import android.content.Context;
import java.util.Calendar;
import q5.c;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private p5.a f70737a;

    public a(Context context, c cVar) {
        p5.a aVar = new p5.a(2);
        this.f70737a = aVar;
        aVar.C = context;
        aVar.f72306a = cVar;
    }

    public com.bigkoo.pickerview.view.a a() {
        return new com.bigkoo.pickerview.view.a(this.f70737a);
    }

    public a b(int i11) {
        this.f70737a.Q = i11;
        return this;
    }

    public a c(String str, String str2, String str3, String str4, String str5, String str6) {
        p5.a aVar = this.f70737a;
        aVar.f72319n = str;
        aVar.f72320o = str2;
        aVar.f72321p = str3;
        aVar.f72322q = str4;
        aVar.f72323r = str5;
        aVar.f72324s = str6;
        return this;
    }

    public a d(Calendar calendar, Calendar calendar2) {
        p5.a aVar = this.f70737a;
        aVar.f72313h = calendar;
        aVar.f72314i = calendar2;
        return this;
    }

    public a e(int i11) {
        this.f70737a.P = i11;
        return this;
    }

    public a f(int i11) {
        this.f70737a.O = i11;
        return this;
    }
}
