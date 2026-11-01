package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$drawable;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final PorterDuff.Mode f2007b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static f f2008c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b0 f2009a;

    class a implements b0.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f2010a = {R$drawable.abc_textfield_search_default_mtrl_alpha, R$drawable.abc_textfield_default_mtrl_alpha, R$drawable.abc_ab_share_pack_mtrl_alpha};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f2011b = {R$drawable.abc_ic_commit_search_api_mtrl_alpha, R$drawable.abc_seekbar_tick_mark_material, R$drawable.abc_ic_menu_share_mtrl_alpha, R$drawable.abc_ic_menu_copy_mtrl_am_alpha, R$drawable.abc_ic_menu_cut_mtrl_alpha, R$drawable.abc_ic_menu_selectall_mtrl_alpha, R$drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f2012c = {R$drawable.abc_textfield_activated_mtrl_alpha, R$drawable.abc_textfield_search_activated_mtrl_alpha, R$drawable.abc_cab_background_top_mtrl_alpha, R$drawable.abc_text_cursor_material, R$drawable.abc_text_select_handle_left_mtrl, R$drawable.abc_text_select_handle_middle_mtrl, R$drawable.abc_text_select_handle_right_mtrl};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f2013d = {R$drawable.abc_popup_background_mtrl_mult, R$drawable.abc_cab_background_internal_bg, R$drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f2014e = {R$drawable.abc_tab_indicator_material, R$drawable.abc_textfield_search_material};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int[] f2015f = {R$drawable.abc_btn_check_material, R$drawable.abc_btn_radio_material, R$drawable.abc_btn_check_material_anim, R$drawable.abc_btn_radio_material_anim};

        a() {
        }

        private boolean f(int[] iArr, int i11) {
            for (int i12 : iArr) {
                if (i12 == i11) {
                    return true;
                }
            }
            return false;
        }

        private ColorStateList g(Context context) {
            return h(context, 0);
        }

        private ColorStateList h(Context context, int i11) {
            int iC = f0.c(context, R$attr.colorControlHighlight);
            return new ColorStateList(new int[][]{f0.f2017b, f0.f2020e, f0.f2018c, f0.f2024i}, new int[]{f0.b(context, R$attr.colorButtonNormal), z0.b.k(iC, i11), z0.b.k(iC, i11), i11});
        }

        private ColorStateList i(Context context) {
            return h(context, f0.c(context, R$attr.colorAccent));
        }

        private ColorStateList j(Context context) {
            return h(context, f0.c(context, R$attr.colorButtonNormal));
        }

        private ColorStateList k(Context context) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList colorStateListE = f0.e(context, R$attr.colorSwitchThumbNormal);
            if (colorStateListE == null || !colorStateListE.isStateful()) {
                iArr[0] = f0.f2017b;
                iArr2[0] = f0.b(context, R$attr.colorSwitchThumbNormal);
                iArr[1] = f0.f2021f;
                iArr2[1] = f0.c(context, R$attr.colorControlActivated);
                iArr[2] = f0.f2024i;
                iArr2[2] = f0.c(context, R$attr.colorSwitchThumbNormal);
            } else {
                int[] iArr3 = f0.f2017b;
                iArr[0] = iArr3;
                iArr2[0] = colorStateListE.getColorForState(iArr3, 0);
                iArr[1] = f0.f2021f;
                iArr2[1] = f0.c(context, R$attr.colorControlActivated);
                iArr[2] = f0.f2024i;
                iArr2[2] = colorStateListE.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        private LayerDrawable l(b0 b0Var, Context context, int i11) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i11);
            Drawable drawableJ = b0Var.j(context, R$drawable.abc_star_black_48dp);
            Drawable drawableJ2 = b0Var.j(context, R$drawable.abc_star_half_black_48dp);
            if ((drawableJ instanceof BitmapDrawable) && drawableJ.getIntrinsicWidth() == dimensionPixelSize && drawableJ.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawableJ;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                drawableJ.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ.draw(canvas);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawableJ2 instanceof BitmapDrawable) && drawableJ2.getIntrinsicWidth() == dimensionPixelSize && drawableJ2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawableJ2;
            } else {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
                drawableJ2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawableJ2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        private void m(Drawable drawable, int i11, PorterDuff.Mode mode) {
            Drawable drawableMutate = drawable.mutate();
            if (mode == null) {
                mode = f.f2007b;
            }
            drawableMutate.setColorFilter(f.e(i11, mode));
        }

        @Override // androidx.appcompat.widget.b0.f
        public Drawable a(b0 b0Var, Context context, int i11) {
            if (i11 == R$drawable.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{b0Var.j(context, R$drawable.abc_cab_background_internal_bg), b0Var.j(context, R$drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (i11 == R$drawable.abc_ratingbar_material) {
                return l(b0Var, context, R$dimen.abc_star_big);
            }
            if (i11 == R$drawable.abc_ratingbar_indicator_material) {
                return l(b0Var, context, R$dimen.abc_star_medium);
            }
            if (i11 == R$drawable.abc_ratingbar_small_material) {
                return l(b0Var, context, R$dimen.abc_star_small);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.b0.f
        public ColorStateList b(Context context, int i11) {
            if (i11 == R$drawable.abc_edit_text_material) {
                return g.a.a(context, R$color.abc_tint_edittext);
            }
            if (i11 == R$drawable.abc_switch_track_mtrl_alpha) {
                return g.a.a(context, R$color.abc_tint_switch_track);
            }
            if (i11 == R$drawable.abc_switch_thumb_material) {
                return k(context);
            }
            if (i11 == R$drawable.abc_btn_default_mtrl_shape) {
                return j(context);
            }
            if (i11 == R$drawable.abc_btn_borderless_material) {
                return g(context);
            }
            if (i11 == R$drawable.abc_btn_colored_material) {
                return i(context);
            }
            if (i11 == R$drawable.abc_spinner_mtrl_am_alpha || i11 == R$drawable.abc_spinner_textfield_background_material) {
                return g.a.a(context, R$color.abc_tint_spinner);
            }
            if (f(this.f2011b, i11)) {
                return f0.e(context, R$attr.colorControlNormal);
            }
            if (f(this.f2014e, i11)) {
                return g.a.a(context, R$color.abc_tint_default);
            }
            if (f(this.f2015f, i11)) {
                return g.a.a(context, R$color.abc_tint_btn_checkable);
            }
            if (i11 == R$drawable.abc_seekbar_thumb_material) {
                return g.a.a(context, R$color.abc_tint_seek_thumb);
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0051  */
        /* JADX WARN: Code duplicated, block: B:24:0x0062  */
        /* JADX WARN: Code duplicated, block: B:26:0x0066 A[RETURN] */
        @Override // androidx.appcompat.widget.b0.f
        public boolean c(Context context, int i11, Drawable drawable) {
            int i12;
            boolean z10;
            int iRound;
            Drawable drawableMutate;
            PorterDuff.Mode mode = f.f2007b;
            if (!f(this.f2010a, i11)) {
                if (f(this.f2012c, i11)) {
                    i12 = R$attr.colorControlActivated;
                } else {
                    if (f(this.f2013d, i11)) {
                        mode = PorterDuff.Mode.MULTIPLY;
                    } else if (i11 == R$drawable.abc_list_divider_mtrl_alpha) {
                        z10 = true;
                        iRound = Math.round(40.8f);
                        i12 = 16842800;
                        mode = mode;
                    } else if (i11 != R$drawable.abc_dialog_material_background) {
                        i12 = 0;
                        z10 = false;
                        iRound = -1;
                    }
                    mode = mode;
                    iRound = -1;
                    i12 = 16842801;
                    z10 = true;
                }
                if (z10) {
                    return false;
                }
                drawableMutate = drawable.mutate();
                drawableMutate.setColorFilter(f.e(f0.c(context, i12), mode));
                if (iRound != -1) {
                    drawableMutate.setAlpha(iRound);
                }
                return true;
            }
            i12 = R$attr.colorControlNormal;
            z10 = true;
            iRound = -1;
            if (z10) {
                return false;
            }
            drawableMutate = drawable.mutate();
            drawableMutate.setColorFilter(f.e(f0.c(context, i12), mode));
            if (iRound != -1) {
                drawableMutate.setAlpha(iRound);
            }
            return true;
        }

        @Override // androidx.appcompat.widget.b0.f
        public PorterDuff.Mode d(int i11) {
            if (i11 == R$drawable.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override // androidx.appcompat.widget.b0.f
        public boolean e(Context context, int i11, Drawable drawable) {
            if (i11 == R$drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m(layerDrawable.findDrawableByLayerId(R.id.background), f0.c(context, R$attr.colorControlNormal), f.f2007b);
                m(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), f0.c(context, R$attr.colorControlNormal), f.f2007b);
                m(layerDrawable.findDrawableByLayerId(R.id.progress), f0.c(context, R$attr.colorControlActivated), f.f2007b);
                return true;
            }
            if (i11 != R$drawable.abc_ratingbar_material && i11 != R$drawable.abc_ratingbar_indicator_material && i11 != R$drawable.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m(layerDrawable2.findDrawableByLayerId(R.id.background), f0.b(context, R$attr.colorControlNormal), f.f2007b);
            m(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), f0.c(context, R$attr.colorControlActivated), f.f2007b);
            m(layerDrawable2.findDrawableByLayerId(R.id.progress), f0.c(context, R$attr.colorControlActivated), f.f2007b);
            return true;
        }
    }

    public static synchronized f b() {
        try {
            if (f2008c == null) {
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f2008c;
    }

    public static synchronized PorterDuffColorFilter e(int i11, PorterDuff.Mode mode) {
        return b0.l(i11, mode);
    }

    public static synchronized void h() {
        if (f2008c == null) {
            f fVar = new f();
            f2008c = fVar;
            fVar.f2009a = b0.h();
            f2008c.f2009a.u(new a());
        }
    }

    static void i(Drawable drawable, h0 h0Var, int[] iArr) {
        b0.w(drawable, h0Var, iArr);
    }

    public synchronized Drawable c(Context context, int i11) {
        return this.f2009a.j(context, i11);
    }

    synchronized Drawable d(Context context, int i11, boolean z10) {
        return this.f2009a.k(context, i11, z10);
    }

    synchronized ColorStateList f(Context context, int i11) {
        return this.f2009a.m(context, i11);
    }

    public synchronized void g(Context context) {
        this.f2009a.s(context);
    }
}
