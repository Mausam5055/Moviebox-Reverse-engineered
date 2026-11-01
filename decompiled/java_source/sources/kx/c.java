package kx;

import android.graphics.drawable.Drawable;
import com.blankj.utilcode.util.Utils;
import com.transsion.videodetail.R$drawable;
import com.transsion.videodetail.music.bean.MusicLoopEnum;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f68404a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static MusicLoopEnum f68405b = MusicLoopEnum.NORMAL;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f68406a;

        static {
            int[] iArr = new int[MusicLoopEnum.values().length];
            try {
                iArr[MusicLoopEnum.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MusicLoopEnum.LIST_LOOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MusicLoopEnum.SINGLE_LOOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f68406a = iArr;
        }
    }

    private c() {
    }

    public final Drawable a(MusicLoopEnum loop) {
        Intrinsics.h(loop, "loop");
        int i11 = a.f68406a[loop.ordinal()];
        if (i11 == 1) {
            return androidx.core.content.b.getDrawable(Utils.a(), R$drawable.music_iv_loop_normal);
        }
        if (i11 == 2) {
            return androidx.core.content.b.getDrawable(Utils.a(), R$drawable.music_iv_loop_list);
        }
        if (i11 == 3) {
            return androidx.core.content.b.getDrawable(Utils.a(), R$drawable.music_iv_loop_single);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final MusicLoopEnum b() {
        return f68405b;
    }

    public final MusicLoopEnum c() {
        MusicLoopEnum musicLoopEnum;
        int i11 = a.f68406a[f68405b.ordinal()];
        if (i11 == 1) {
            musicLoopEnum = MusicLoopEnum.LIST_LOOP;
        } else if (i11 == 2) {
            musicLoopEnum = MusicLoopEnum.SINGLE_LOOP;
        } else {
            if (i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            musicLoopEnum = MusicLoopEnum.NORMAL;
        }
        f68405b = musicLoopEnum;
        return musicLoopEnum;
    }
}
