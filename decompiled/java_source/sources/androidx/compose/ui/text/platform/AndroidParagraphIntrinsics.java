package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.runtime.a3;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.font.e0;
import androidx.compose.ui.text.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import k0.g0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidParagraphIntrinsics implements androidx.compose.ui.text.o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f6301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f6302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f6303d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.compose.ui.text.font.h.b f6304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o0.e f6305f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AndroidTextPaint f6306g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CharSequence f6307h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final g0 f6308i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private q f6309j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f6310k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f6311l;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.List] */
    public AndroidParagraphIntrinsics(String str, d0 d0Var, List list, List list2, androidx.compose.ui.text.font.h.b bVar, o0.e eVar) {
        this.f6300a = str;
        this.f6301b = d0Var;
        this.f6302c = list;
        this.f6303d = list2;
        this.f6304e = bVar;
        this.f6305f = eVar;
        AndroidTextPaint androidTextPaint = new AndroidTextPaint(1, eVar.getDensity());
        this.f6306g = androidTextPaint;
        this.f6310k = !d.c(d0Var) ? false : ((Boolean) k.f6328a.a().getValue()).booleanValue();
        this.f6311l = d.d(d0Var.B(), d0Var.u());
        Function4<androidx.compose.ui.text.font.h, androidx.compose.ui.text.font.p, androidx.compose.ui.text.font.n, androidx.compose.ui.text.font.o, Typeface> function4 = new Function4<androidx.compose.ui.text.font.h, androidx.compose.ui.text.font.p, androidx.compose.ui.text.font.n, androidx.compose.ui.text.font.o, Typeface>() { // from class: androidx.compose.ui.text.platform.AndroidParagraphIntrinsics$resolveTypeface$1
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return m179invokeDPcqOEQ((androidx.compose.ui.text.font.h) obj, (androidx.compose.ui.text.font.p) obj2, ((androidx.compose.ui.text.font.n) obj3).i(), ((androidx.compose.ui.text.font.o) obj4).k());
            }

            /* JADX INFO: renamed from: invoke-DPcqOEQ, reason: not valid java name */
            public final Typeface m179invokeDPcqOEQ(androidx.compose.ui.text.font.h hVar, androidx.compose.ui.text.font.p pVar, int i11, int i12) {
                a3 a3VarA = this.this$0.g().a(hVar, pVar, i11, i12);
                if (a3VarA instanceof e0.a) {
                    Object value = a3VarA.getValue();
                    Intrinsics.f(value, "null cannot be cast to non-null type android.graphics.Typeface");
                    return (Typeface) value;
                }
                q qVar = new q(a3VarA, this.this$0.f6309j);
                this.this$0.f6309j = qVar;
                return qVar.a();
            }
        };
        androidx.compose.ui.text.platform.extensions.f.e(androidTextPaint, d0Var.E());
        x xVarA = androidx.compose.ui.text.platform.extensions.f.a(androidTextPaint, d0Var.L(), function4, eVar, !((Collection) list).isEmpty());
        if (xVarA != null) {
            int size = list.size() + 1;
            list = new ArrayList(size);
            int i11 = 0;
            while (i11 < size) {
                list.add(i11 == 0 ? new AnnotatedString.c(xVarA, 0, this.f6300a.length()) : (AnnotatedString.c) this.f6302c.get(i11 - 1));
                i11++;
            }
        }
        CharSequence charSequenceA = c.a(this.f6300a, this.f6306g.getTextSize(), this.f6301b, list, this.f6303d, this.f6305f, function4, this.f6310k);
        this.f6307h = charSequenceA;
        this.f6308i = new g0(charSequenceA, this.f6306g, this.f6311l);
    }

    @Override // androidx.compose.ui.text.o
    public float a() {
        return this.f6308i.b();
    }

    @Override // androidx.compose.ui.text.o
    public boolean b() {
        q qVar = this.f6309j;
        return (qVar != null ? qVar.b() : false) || (!this.f6310k && d.c(this.f6301b) && ((Boolean) k.f6328a.a().getValue()).booleanValue());
    }

    @Override // androidx.compose.ui.text.o
    public float c() {
        return this.f6308i.c();
    }

    public final CharSequence f() {
        return this.f6307h;
    }

    public final androidx.compose.ui.text.font.h.b g() {
        return this.f6304e;
    }

    public final g0 h() {
        return this.f6308i;
    }

    public final d0 i() {
        return this.f6301b;
    }

    public final int j() {
        return this.f6311l;
    }

    public final AndroidTextPaint k() {
        return this.f6306g;
    }
}
