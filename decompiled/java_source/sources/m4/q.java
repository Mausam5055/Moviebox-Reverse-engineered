package m4;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class q implements s, n4.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LottieDrawable f69291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f69292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n4.a f69293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private r4.i f69294d;

    public q(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, r4.h hVar) {
        this.f69291a = lottieDrawable;
        this.f69292b = hVar.c();
        n4.a aVarA = hVar.b().a();
        this.f69293c = aVarA;
        aVar.i(aVarA);
        aVarA.a(this);
    }

    private static int b(int i11, int i12) {
        int i13 = i11 / i12;
        return ((i11 ^ i12) >= 0 || i12 * i13 == i11) ? i13 : i13 - 1;
    }

    private static int d(int i11, int i12) {
        return i11 - (b(i11, i12) * i12);
    }

    private r4.i i(r4.i iVar) {
        List listA = iVar.a();
        boolean zD = iVar.d();
        int size = listA.size() - 1;
        int i11 = 0;
        while (size >= 0) {
            p4.a aVar = (p4.a) listA.get(size);
            p4.a aVar2 = (p4.a) listA.get(d(size - 1, listA.size()));
            PointF pointFC = (size != 0 || zD) ? aVar2.c() : iVar.b();
            i11 = (((size != 0 || zD) ? aVar2.b() : pointFC).equals(pointFC) && aVar.a().equals(pointFC) && !(!iVar.d() && (size == 0 || size == listA.size() - 1))) ? i11 + 2 : i11 + 1;
            size--;
        }
        r4.i iVar2 = this.f69294d;
        if (iVar2 == null || iVar2.a().size() != i11) {
            ArrayList arrayList = new ArrayList(i11);
            for (int i12 = 0; i12 < i11; i12++) {
                arrayList.add(new p4.a());
            }
            this.f69294d = new r4.i(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.f69294d.e(zD);
        return this.f69294d;
    }

    @Override // n4.a.b
    public void a() {
        this.f69291a.invalidateSelf();
    }

    @Override // m4.c
    public void c(List list, List list2) {
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009f  */
    @Override // m4.s
    public r4.i e(r4.i iVar) {
        boolean z10;
        List listA = iVar.a();
        if (listA.size() <= 2) {
            return iVar;
        }
        float fFloatValue = ((Float) this.f69293c.h()).floatValue();
        if (fFloatValue == 0.0f) {
            return iVar;
        }
        r4.i iVarI = i(iVar);
        iVarI.f(iVar.b().x, iVar.b().y);
        List listA2 = iVarI.a();
        boolean zD = iVar.d();
        int i11 = 0;
        int i12 = 0;
        while (i11 < listA.size()) {
            p4.a aVar = (p4.a) listA.get(i11);
            p4.a aVar2 = (p4.a) listA.get(d(i11 - 1, listA.size()));
            p4.a aVar3 = (p4.a) listA.get(d(i11 - 2, listA.size()));
            PointF pointFC = (i11 != 0 || zD) ? aVar2.c() : iVar.b();
            PointF pointFB = (i11 != 0 || zD) ? aVar2.b() : pointFC;
            PointF pointFA = aVar.a();
            PointF pointFC2 = aVar3.c();
            PointF pointFC3 = aVar.c();
            if (iVar.d()) {
                z10 = false;
            } else {
                z10 = true;
                if (i11 != 0 && i11 != listA.size() - 1) {
                    z10 = false;
                }
            }
            if (pointFB.equals(pointFC) && pointFA.equals(pointFC) && !z10) {
                float f11 = pointFC.x;
                float f12 = f11 - pointFC2.x;
                float f13 = pointFC.y;
                float f14 = f13 - pointFC2.y;
                float f15 = pointFC3.x - f11;
                float f16 = pointFC3.y - f13;
                float fHypot = (float) Math.hypot(f12, f14);
                float fHypot2 = (float) Math.hypot(f15, f16);
                float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                float f17 = pointFC.x;
                float f18 = ((pointFC2.x - f17) * fMin) + f17;
                float f19 = pointFC.y;
                float f20 = ((pointFC2.y - f19) * fMin) + f19;
                float f21 = ((pointFC3.x - f17) * fMin2) + f17;
                float f22 = ((pointFC3.y - f19) * fMin2) + f19;
                float f23 = f18 - ((f18 - f17) * 0.5519f);
                float f24 = f20 - ((f20 - f19) * 0.5519f);
                float f25 = f21 - ((f21 - f17) * 0.5519f);
                float f26 = f22 - ((f22 - f19) * 0.5519f);
                p4.a aVar4 = (p4.a) listA2.get(d(i12 - 1, listA2.size()));
                p4.a aVar5 = (p4.a) listA2.get(i12);
                aVar4.e(f18, f20);
                aVar4.f(f18, f20);
                if (i11 == 0) {
                    iVarI.f(f18, f20);
                }
                aVar5.d(f23, f24);
                p4.a aVar6 = (p4.a) listA2.get(i12 + 1);
                aVar5.e(f25, f26);
                aVar5.f(f21, f22);
                aVar6.d(f21, f22);
                i12 += 2;
            } else {
                p4.a aVar7 = (p4.a) listA2.get(d(i12 - 1, listA2.size()));
                p4.a aVar8 = (p4.a) listA2.get(i12);
                aVar7.e(aVar2.b().x, aVar2.b().y);
                aVar7.f(aVar2.c().x, aVar2.c().y);
                aVar8.d(aVar.a().x, aVar.a().y);
                i12++;
            }
            i11++;
            listA = listA;
        }
        return iVarI;
    }

    public n4.a g() {
        return this.f69293c;
    }
}
