package com.tencent.tinker.loader.shareutil;

/* JADX INFO: loaded from: classes5.dex */
public final class ShareOatUtil {

    /* JADX INFO: renamed from: com.tencent.tinker.loader.shareutil.ShareOatUtil$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;

        static {
            int[] iArr = new int[InstructionSet.values().length];
            $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet = iArr;
            try {
                iArr[InstructionSet.kArm.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet[InstructionSet.kThumb2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet[InstructionSet.kArm64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet[InstructionSet.kX86.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet[InstructionSet.kX86_64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet[InstructionSet.kMips.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet[InstructionSet.kMips64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet[InstructionSet.kNone.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private enum InstructionSet {
        kNone,
        kArm,
        kArm64,
        kThumb2,
        kX86,
        kX86_64,
        kMips,
        kMips64
    }

    private ShareOatUtil() {
        throw new UnsupportedOperationException();
    }
}
