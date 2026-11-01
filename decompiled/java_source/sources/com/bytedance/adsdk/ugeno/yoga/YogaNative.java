package com.bytedance.adsdk.ugeno.yoga;

/* JADX INFO: loaded from: classes2.dex */
@com.bytedance.adsdk.ugeno.yoga.Sj.Sj
public class YogaNative {
    static {
        System.loadLibrary("tt_ugen_layout");
    }

    static native void jni_YGConfigFreeJNI(long j11);

    static native int jni_YGConfigGetErrataJNI(long j11);

    static native long jni_YGConfigNewJNI();

    static native void jni_YGConfigSetErrataJNI(long j11, int i11);

    static native void jni_YGConfigSetExperimentalFeatureEnabledJNI(long j11, int i11, boolean z10);

    static native void jni_YGConfigSetLoggerJNI(long j11, YogaLogger yogaLogger);

    static native void jni_YGConfigSetPointScaleFactorJNI(long j11, float f11);

    static native void jni_YGConfigSetPrintTreeFlagJNI(long j11, boolean z10);

    static native void jni_YGConfigSetUseLegacyStretchBehaviourJNI(long j11, boolean z10);

    static native void jni_YGConfigSetUseWebDefaultsJNI(long j11, boolean z10);

    static native void jni_YGNodeCalculateLayoutJNI(long j11, float f11, float f12, long[] jArr, YogaNodeJNIBase[] yogaNodeJNIBaseArr);

    static native long jni_YGNodeCloneJNI(long j11);

    static native void jni_YGNodeCopyStyleJNI(long j11, long j12);

    static native void jni_YGNodeDeallocateJNI(long j11);

    static native void jni_YGNodeInsertChildJNI(long j11, long j12, int i11);

    static native boolean jni_YGNodeIsDirtyJNI(long j11);

    static native boolean jni_YGNodeIsReferenceBaselineJNI(long j11);

    static native void jni_YGNodeMarkDirtyAndPropagateToDescendantsJNI(long j11);

    static native void jni_YGNodeMarkDirtyJNI(long j11);

    static native long jni_YGNodeNewJNI();

    static native long jni_YGNodeNewWithConfigJNI(long j11);

    static native void jni_YGNodePrintJNI(long j11);

    static native void jni_YGNodeRemoveAllChildrenJNI(long j11);

    static native void jni_YGNodeRemoveChildJNI(long j11, long j12);

    static native void jni_YGNodeResetJNI(long j11);

    static native void jni_YGNodeSetHasBaselineFuncJNI(long j11, boolean z10);

    static native void jni_YGNodeSetHasMeasureFuncJNI(long j11, boolean z10);

    static native void jni_YGNodeSetIsReferenceBaselineJNI(long j11, boolean z10);

    static native void jni_YGNodeSetStyleInputsJNI(long j11, float[] fArr, int i11);

    static native int jni_YGNodeStyleGetAlignContentJNI(long j11);

    static native int jni_YGNodeStyleGetAlignItemsJNI(long j11);

    static native int jni_YGNodeStyleGetAlignSelfJNI(long j11);

    static native float jni_YGNodeStyleGetAspectRatioJNI(long j11);

    static native float jni_YGNodeStyleGetBorderJNI(long j11, int i11);

    static native int jni_YGNodeStyleGetDirectionJNI(long j11);

    static native int jni_YGNodeStyleGetDisplayJNI(long j11);

    static native long jni_YGNodeStyleGetFlexBasisJNI(long j11);

    static native int jni_YGNodeStyleGetFlexDirectionJNI(long j11);

    static native float jni_YGNodeStyleGetFlexGrowJNI(long j11);

    static native float jni_YGNodeStyleGetFlexJNI(long j11);

    static native float jni_YGNodeStyleGetFlexShrinkJNI(long j11);

    static native int jni_YGNodeStyleGetFlexWrapJNI(long j11);

    static native float jni_YGNodeStyleGetGapJNI(long j11, int i11);

    static native long jni_YGNodeStyleGetHeightJNI(long j11);

    static native int jni_YGNodeStyleGetJustifyContentJNI(long j11);

    static native long jni_YGNodeStyleGetMarginJNI(long j11, int i11);

    static native long jni_YGNodeStyleGetMaxHeightJNI(long j11);

    static native long jni_YGNodeStyleGetMaxWidthJNI(long j11);

    static native long jni_YGNodeStyleGetMinHeightJNI(long j11);

    static native long jni_YGNodeStyleGetMinWidthJNI(long j11);

    static native int jni_YGNodeStyleGetOverflowJNI(long j11);

    static native long jni_YGNodeStyleGetPaddingJNI(long j11, int i11);

    static native long jni_YGNodeStyleGetPositionJNI(long j11, int i11);

    static native int jni_YGNodeStyleGetPositionTypeJNI(long j11);

    static native long jni_YGNodeStyleGetWidthJNI(long j11);

    static native void jni_YGNodeStyleSetAlignContentJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetAlignItemsJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetAlignSelfJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetAspectRatioJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetBorderJNI(long j11, int i11, float f11);

    static native void jni_YGNodeStyleSetDirectionJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetDisplayJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetFlexBasisAutoJNI(long j11);

    static native void jni_YGNodeStyleSetFlexBasisJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetFlexBasisPercentJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetFlexDirectionJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetFlexGrowJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetFlexJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetFlexShrinkJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetFlexWrapJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetGapJNI(long j11, int i11, float f11);

    static native void jni_YGNodeStyleSetHeightAutoJNI(long j11);

    static native void jni_YGNodeStyleSetHeightJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetHeightPercentJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetJustifyContentJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetMarginAutoJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetMarginJNI(long j11, int i11, float f11);

    static native void jni_YGNodeStyleSetMarginPercentJNI(long j11, int i11, float f11);

    static native void jni_YGNodeStyleSetMaxHeightJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetMaxHeightPercentJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetMaxWidthJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetMaxWidthPercentJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetMinHeightJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetMinHeightPercentJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetMinWidthJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetMinWidthPercentJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetOverflowJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetPaddingJNI(long j11, int i11, float f11);

    static native void jni_YGNodeStyleSetPaddingPercentJNI(long j11, int i11, float f11);

    static native void jni_YGNodeStyleSetPositionJNI(long j11, int i11, float f11);

    static native void jni_YGNodeStyleSetPositionPercentJNI(long j11, int i11, float f11);

    static native void jni_YGNodeStyleSetPositionTypeJNI(long j11, int i11);

    static native void jni_YGNodeStyleSetWidthAutoJNI(long j11);

    static native void jni_YGNodeStyleSetWidthJNI(long j11, float f11);

    static native void jni_YGNodeStyleSetWidthPercentJNI(long j11, float f11);

    static native void jni_YGNodeSwapChildJNI(long j11, long j12, int i11);
}
