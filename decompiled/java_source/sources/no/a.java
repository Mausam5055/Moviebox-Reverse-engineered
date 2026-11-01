package no;

import android.view.View;
import com.transsion.player.ui.render.RenderScaleMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f70488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RenderScaleMode f70490c = RenderScaleMode.SCREEN_SCALE_DEFAULT;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70491d;

    /* JADX INFO: renamed from: no.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0852a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f70492a;

        static {
            int[] iArr = new int[RenderScaleMode.values().length];
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_ORIGINAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_16_9.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_4_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_MATCH_PARENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_CENTER_CROP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f70492a = iArr;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x0043 A[PHI: r7
  0x0043: PHI (r7v10 int) = (r7v6 int), (r7v8 int), (r7v9 int), (r7v13 int) binds: [B:36:0x0075, B:27:0x0055, B:23:0x0049, B:20:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    public final int[] a(int i11, int i12) {
        int i13 = this.f70491d;
        if (i13 == 90 || i13 == 270) {
            i12 = i11;
            i11 = i12;
        }
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i12);
        if (this.f70489b == 0 || this.f70488a == 0) {
            return new int[]{size, size2};
        }
        switch (C0852a.f70492a[this.f70490c.ordinal()]) {
            case 1:
                int i14 = this.f70488a;
                int i15 = i14 * size2;
                int i16 = this.f70489b;
                if (i15 < size * i16) {
                    i11 = (i14 * size2) / i16;
                } else {
                    if (i14 * size2 > size * i16) {
                        i12 = (i16 * size) / i14;
                        i11 = size;
                        return new int[]{i11, i12};
                    }
                    i11 = size;
                }
                i12 = size2;
                return new int[]{i11, i12};
            case 2:
                i11 = this.f70488a;
                i12 = this.f70489b;
                return new int[]{i11, i12};
            case 3:
                i12 = (size / 16) * 9;
                if (size2 > i12) {
                    i11 = size;
                } else {
                    i11 = (size2 / 9) * 16;
                    i12 = size2;
                }
                return new int[]{i11, i12};
            case 4:
                i12 = (size / 4) * 3;
                if (size2 > i12) {
                    i11 = size;
                } else {
                    i11 = (size2 / 3) * 4;
                    i12 = size2;
                }
                return new int[]{i11, i12};
            case 5:
                return new int[]{i11, i12};
            case 6:
                int i17 = this.f70488a;
                int i18 = i17 * size2;
                int i19 = this.f70489b;
                if (i18 > size * i19) {
                    i11 = (i17 * size2) / i19;
                    i12 = size2;
                    return new int[]{i11, i12};
                }
                i12 = (i19 * size) / i17;
                i11 = size;
                return new int[]{i11, i12};
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final void b(RenderScaleMode screenScale) {
        Intrinsics.h(screenScale, "screenScale");
        if (screenScale == this.f70490c) {
            return;
        }
        this.f70490c = screenScale;
    }

    public final void c(int i11) {
        this.f70491d = i11;
    }

    public final void d(int i11, int i12) {
        this.f70488a = i11;
        this.f70489b = i12;
    }
}
