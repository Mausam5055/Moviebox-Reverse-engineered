package com.bytedance.adsdk.ugeno.yoga;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@com.bytedance.adsdk.ugeno.yoga.Sj.Sj
public abstract class YogaNodeJNIBase extends aa implements Cloneable {
    private uA EjP;
    private TKC HiB;
    private boolean Jcg;
    protected long Sj;
    private List<YogaNodeJNIBase> TKC;

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    private float[] arr;

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    private int mLayoutDirection;
    private YogaNodeJNIBase sP;
    private Object vS;

    YogaNodeJNIBase() {
        this(YogaNative.jni_YGNodeNewJNI());
    }

    private YogaNodeJNIBase(long j11) {
        this.arr = null;
        this.mLayoutDirection = 0;
        this.Jcg = true;
        if (j11 == 0) {
            throw new IllegalStateException("Failed to allocate native memory");
        }
        this.Sj = j11;
    }

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    private final long replaceChild(YogaNodeJNIBase yogaNodeJNIBase, int i11) {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list == null) {
            throw new IllegalStateException("Cannot replace child. YogaNode does not have children");
        }
        list.remove(i11);
        this.TKC.add(i11, yogaNodeJNIBase);
        yogaNodeJNIBase.sP = this;
        return yogaNodeJNIBase.Sj;
    }

    private void sP(aa aaVar) {
        uA();
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public float Dq() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[2];
        }
        return 0.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Dq(float f11) {
        YogaNative.jni_YGNodeStyleSetMinWidthJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    /* JADX INFO: renamed from: EjP, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase sP(int i11) {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list == null) {
            throw new IllegalStateException("Trying to remove a child of a YogaNode that does not have children");
        }
        YogaNodeJNIBase yogaNodeJNIBaseRemove = list.remove(i11);
        yogaNodeJNIBaseRemove.sP = null;
        YogaNative.jni_YGNodeRemoveChildJNI(this.Sj, yogaNodeJNIBaseRemove.Sj);
        return yogaNodeJNIBaseRemove;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void EjP() {
        YogaNative.jni_YGNodeStyleSetHeightAutoJNI(this.Sj);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void EjP(float f11) {
        YogaNative.jni_YGNodeStyleSetWidthJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public float HiB() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[3];
        }
        return 0.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void HiB(float f11) {
        YogaNative.jni_YGNodeStyleSetWidthPercentJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public float Jcg() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[1];
        }
        return 0.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Jcg(float f11) {
        YogaNative.jni_YGNodeStyleSetHeightPercentJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public int Sj() {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public int Sj(aa aaVar) {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list == null) {
            return -1;
        }
        return list.indexOf(aaVar);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(float f11) {
        YogaNative.jni_YGNodeStyleSetFlexGrowJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(float f11, float f12) {
        sP((aa) null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) arrayList.get(i11);
            List<YogaNodeJNIBase> list = yogaNodeJNIBase.TKC;
            if (list != null) {
                for (YogaNodeJNIBase yogaNodeJNIBase2 : list) {
                    yogaNodeJNIBase2.sP(yogaNodeJNIBase);
                    arrayList.add(yogaNodeJNIBase2);
                }
            }
        }
        YogaNodeJNIBase[] yogaNodeJNIBaseArr = (YogaNodeJNIBase[]) arrayList.toArray(new YogaNodeJNIBase[arrayList.size()]);
        long[] jArr = new long[yogaNodeJNIBaseArr.length];
        for (int i12 = 0; i12 < yogaNodeJNIBaseArr.length; i12++) {
            jArr[i12] = yogaNodeJNIBaseArr[i12].Sj;
        }
        YogaNative.jni_YGNodeCalculateLayoutJNI(this.Sj, f11, f12, jArr, yogaNodeJNIBaseArr);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(EjP ejP) {
        YogaNative.jni_YGNodeStyleSetDirectionJNI(this.Sj, ejP.Sj());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(HiB hiB, float f11) {
        YogaNative.jni_YGNodeStyleSetMarginJNI(this.Sj, hiB.Sj(), f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(Jcg jcg) {
        YogaNative.jni_YGNodeStyleSetJustifyContentJNI(this.Sj, jcg.Sj());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(Zq zq2) {
        YogaNative.jni_YGNodeStyleSetPositionTypeJNI(this.Sj, zq2.Sj());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(aa aaVar, int i11) {
        if (aaVar instanceof YogaNodeJNIBase) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) aaVar;
            if (yogaNodeJNIBase.sP != null) {
                throw new IllegalStateException("Child already has a parent, it must be removed first.");
            }
            if (this.TKC == null) {
                this.TKC = new ArrayList(4);
            }
            this.TKC.add(i11, yogaNodeJNIBase);
            yogaNodeJNIBase.sP = this;
            YogaNative.jni_YGNodeInsertChildJNI(this.Sj, yogaNodeJNIBase.Sj, i11);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(sP sPVar) {
        YogaNative.jni_YGNodeStyleSetAlignItemsJNI(this.Sj, sPVar.Sj());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(uA uAVar) {
        this.EjP = uAVar;
        YogaNative.jni_YGNodeSetHasMeasureFuncJNI(this.Sj, uAVar != null);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(uvD uvd) {
        YogaNative.jni_YGNodeStyleSetFlexWrapJNI(this.Sj, uvd.Sj());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(vS vSVar) {
        YogaNative.jni_YGNodeStyleSetFlexDirectionJNI(this.Sj, vSVar.Sj());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Sj(Object obj) {
        this.vS = obj;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    /* JADX INFO: renamed from: TEQ, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase sP() {
        return this.sP;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void TEQ(float f11) {
        YogaNative.jni_YGNodeStyleSetMaxWidthJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase Sj(int i11) {
        List<YogaNodeJNIBase> list = this.TKC;
        if (list != null) {
            return list.get(i11);
        }
        throw new IllegalStateException("YogaNode does not have children");
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void TKC() {
        YogaNative.jni_YGNodeStyleSetWidthAutoJNI(this.Sj);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void TKC(float f11) {
        YogaNative.jni_YGNodeStyleSetFlexBasisJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void TKC(HiB hiB, float f11) {
        YogaNative.jni_YGNodeStyleSetPositionJNI(this.Sj, hiB.Sj(), f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void TKC(sP sPVar) {
        YogaNative.jni_YGNodeStyleSetAlignContentJNI(this.Sj, sPVar.Sj());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void Ym(float f11) {
        YogaNative.jni_YGNodeStyleSetMaxHeightJNI(this.Sj, f11);
    }

    public boolean Ym() {
        return this.EjP != null;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void aa(float f11) {
        YogaNative.jni_YGNodeStyleSetAspectRatioJNI(this.Sj, f11);
    }

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    public final float baseline(float f11, float f12) {
        return this.HiB.Sj(this, f11, f12);
    }

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    public final long measure(float f11, int i11, float f12, int i12) {
        if (Ym()) {
            return this.EjP.Sj(this, f11, TEQ.Sj(i11), f12, TEQ.Sj(i12));
        }
        throw new RuntimeException("Measure function isn't defined!");
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void sP(float f11) {
        YogaNative.jni_YGNodeStyleSetFlexShrinkJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void sP(HiB hiB, float f11) {
        YogaNative.jni_YGNodeStyleSetPaddingJNI(this.Sj, hiB.Sj(), f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void sP(sP sPVar) {
        YogaNative.jni_YGNodeStyleSetAlignSelfJNI(this.Sj, sPVar.Sj());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public Object uA() {
        return this.vS;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void uA(float f11) {
        YogaNative.jni_YGNodeStyleSetMinHeightJNI(this.Sj, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public float vS() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[4];
        }
        return 0.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.aa
    public void vS(float f11) {
        YogaNative.jni_YGNodeStyleSetHeightJNI(this.Sj, f11);
    }
}
