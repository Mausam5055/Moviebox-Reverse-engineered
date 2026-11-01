package androidx.compose.material3;

import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.runtime.s1;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public abstract class ColorSchemeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f3513a = CompositionLocalKt.f(new Function0<androidx.compose.material3.a>() { // from class: androidx.compose.material3.ColorSchemeKt$LocalColorScheme$1
        @Override // kotlin.jvm.functions.Function0
        public final a invoke() {
            return ColorSchemeKt.e(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1, 15, null);
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final s1 f3514b = CompositionLocalKt.f(new Function0<Boolean>() { // from class: androidx.compose.material3.ColorSchemeKt$LocalTonalElevationEnabled$1
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.TRUE;
        }
    });

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3515a;

        static {
            int[] iArr = new int[ColorSchemeKeyTokens.values().length];
            try {
                iArr[ColorSchemeKeyTokens.Background.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Error.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ColorSchemeKeyTokens.ErrorContainer.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseOnSurface.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InversePrimary.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseSurface.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnBackground.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnError.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnErrorContainer.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimary.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryContainer.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondary.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryContainer.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurface.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurfaceVariant.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceTint.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiary.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryContainer.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Outline.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OutlineVariant.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Primary.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryContainer.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Scrim.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Secondary.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryContainer.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Surface.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceVariant.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceBright.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainer.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHigh.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHighest.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLow.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLowest.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceDim.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Tertiary.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryContainer.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            f3515a = iArr;
        }
    }

    public static final long a(androidx.compose.material3.a aVar, ColorSchemeKeyTokens colorSchemeKeyTokens) {
        switch (a.f3515a[colorSchemeKeyTokens.ordinal()]) {
            case 1:
                return aVar.a();
            case 2:
                return aVar.b();
            case 3:
                return aVar.c();
            case 4:
                return aVar.d();
            case 5:
                return aVar.e();
            case 6:
                return aVar.f();
            case 7:
                return aVar.g();
            case 8:
                return aVar.h();
            case 9:
                return aVar.i();
            case 10:
                return aVar.j();
            case 11:
                return aVar.k();
            case 12:
                return aVar.l();
            case 13:
                return aVar.m();
            case 14:
                return aVar.n();
            case 15:
                return aVar.o();
            case 16:
                return aVar.G();
            case 17:
                return aVar.p();
            case 18:
                return aVar.q();
            case 19:
                return aVar.r();
            case 20:
                return aVar.s();
            case 21:
                return aVar.t();
            case 22:
                return aVar.u();
            case 23:
                return aVar.v();
            case 24:
                return aVar.w();
            case 25:
                return aVar.x();
            case 26:
                return aVar.y();
            case 27:
                return aVar.H();
            case 28:
                return aVar.z();
            case NOTIFICATION_REDIRECT_VALUE:
                return aVar.A();
            case 30:
                return aVar.B();
            case TEMPLATE_HTML_SIZE_VALUE:
                return aVar.C();
            case 32:
                return aVar.D();
            case 33:
                return aVar.E();
            case 34:
                return aVar.F();
            case 35:
                return aVar.I();
            case 36:
                return aVar.J();
            default:
                return u1.f4658b.e();
        }
    }

    public static final s1 b() {
        return f3513a;
    }

    public static final long c(ColorSchemeKeyTokens colorSchemeKeyTokens, i iVar, int i11) {
        if (k.H()) {
            k.Q(-810780884, i11, -1, "androidx.compose.material3.<get-value> (ColorScheme.kt:945)");
        }
        long jA = a(e.f3548a.a(iVar, 6), colorSchemeKeyTokens);
        if (k.H()) {
            k.P();
        }
        return jA;
    }

    public static final androidx.compose.material3.a d(long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46) {
        return new androidx.compose.material3.a(j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, j37, j38, j39, j40, j46, j41, j42, j43, j44, j45, null);
    }

    public static /* synthetic */ androidx.compose.material3.a e(long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, int i11, int i12, Object obj) {
        long jT = (i11 & 1) != 0 ? r.a.f73908a.t() : j11;
        return d(jT, (i11 & 2) != 0 ? r.a.f73908a.j() : j12, (i11 & 4) != 0 ? r.a.f73908a.u() : j13, (i11 & 8) != 0 ? r.a.f73908a.k() : j14, (i11 & 16) != 0 ? r.a.f73908a.e() : j15, (i11 & 32) != 0 ? r.a.f73908a.w() : j16, (i11 & 64) != 0 ? r.a.f73908a.l() : j17, (i11 & 128) != 0 ? r.a.f73908a.x() : j18, (i11 & 256) != 0 ? r.a.f73908a.m() : j19, (i11 & 512) != 0 ? r.a.f73908a.H() : j20, (i11 & 1024) != 0 ? r.a.f73908a.p() : j21, (i11 & 2048) != 0 ? r.a.f73908a.I() : j22, (i11 & 4096) != 0 ? r.a.f73908a.q() : j23, (i11 & 8192) != 0 ? r.a.f73908a.a() : j24, (i11 & 16384) != 0 ? r.a.f73908a.g() : j25, (i11 & 32768) != 0 ? r.a.f73908a.y() : j26, (i11 & 65536) != 0 ? r.a.f73908a.n() : j27, (i11 & 131072) != 0 ? r.a.f73908a.G() : j28, (i11 & 262144) != 0 ? r.a.f73908a.o() : j29, (i11 & 524288) != 0 ? jT : j30, (i11 & 1048576) != 0 ? r.a.f73908a.f() : j31, (i11 & 2097152) != 0 ? r.a.f73908a.d() : j32, (i11 & 4194304) != 0 ? r.a.f73908a.b() : j33, (i11 & 8388608) != 0 ? r.a.f73908a.h() : j34, (i11 & 16777216) != 0 ? r.a.f73908a.c() : j35, (i11 & ASTNode.PCTX_STORED) != 0 ? r.a.f73908a.i() : j36, (i11 & 67108864) != 0 ? r.a.f73908a.r() : j37, (i11 & ASTNode.NOJIT) != 0 ? r.a.f73908a.s() : j38, (i11 & ASTNode.DEOP) != 0 ? r.a.f73908a.v() : j39, (i11 & ASTNode.DISCARD) != 0 ? r.a.f73908a.z() : j40, (i11 & 1073741824) != 0 ? r.a.f73908a.A() : j41, (i11 & Integer.MIN_VALUE) != 0 ? r.a.f73908a.B() : j42, (i12 & 1) != 0 ? r.a.f73908a.C() : j43, (i12 & 2) != 0 ? r.a.f73908a.D() : j44, (i12 & 4) != 0 ? r.a.f73908a.E() : j45, (i12 & 8) != 0 ? r.a.f73908a.F() : j46);
    }
}
