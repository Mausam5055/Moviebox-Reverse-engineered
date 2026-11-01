package com.bytedance.adsdk.sP.sP;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bytedance.adsdk.sP.TKC;
import com.bytedance.adsdk.sP.TKC.Jcg;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private final AssetManager EjP;
    private TKC HiB;
    private final Jcg<String> Sj = new Jcg<>();
    private final Map<Jcg<String>, Typeface> sP = new HashMap();
    private final Map<String, Typeface> TKC = new HashMap();
    private String vS = ".ttf";

    public Sj(Drawable.Callback callback, TKC tkc) {
        this.HiB = tkc;
        if (callback instanceof View) {
            this.EjP = ((View) callback).getContext().getAssets();
        } else {
            this.EjP = null;
        }
    }

    private Typeface Sj(Typeface typeface, String str) {
        int i11;
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        if (zContains && zContains2) {
            i11 = 3;
        } else if (zContains) {
            i11 = 2;
        } else {
            i11 = zContains2 ? 1 : 0;
        }
        return typeface.getStyle() == i11 ? typeface : Typeface.create(typeface, i11);
    }

    private Typeface sP(com.bytedance.adsdk.sP.TKC.TKC tkc) {
        Typeface typefaceCreateFromAsset;
        String strSj = tkc.Sj();
        Typeface typeface = this.TKC.get(strSj);
        if (typeface != null) {
            return typeface;
        }
        String strTKC = tkc.TKC();
        String strSP = tkc.sP();
        TKC tkc2 = this.HiB;
        if (tkc2 != null) {
            typefaceCreateFromAsset = tkc2.Sj(strSj, strTKC, strSP);
            if (typefaceCreateFromAsset == null) {
                typefaceCreateFromAsset = this.HiB.Sj(strSj);
            }
        } else {
            typefaceCreateFromAsset = null;
        }
        TKC tkc3 = this.HiB;
        if (tkc3 != null && typefaceCreateFromAsset == null) {
            String strSP2 = tkc3.sP(strSj, strTKC, strSP);
            if (strSP2 == null) {
                strSP2 = this.HiB.sP(strSj);
            }
            if (strSP2 != null) {
                try {
                    typefaceCreateFromAsset = Typeface.createFromAsset(this.EjP, strSP2);
                } catch (Throwable unused) {
                    typefaceCreateFromAsset = Typeface.DEFAULT;
                }
            }
        }
        if (tkc.EjP() != null) {
            return tkc.EjP();
        }
        if (typefaceCreateFromAsset == null) {
            try {
                typefaceCreateFromAsset = Typeface.createFromAsset(this.EjP, "fonts/" + strSj + this.vS);
            } catch (Throwable unused2) {
                typefaceCreateFromAsset = Typeface.DEFAULT;
            }
        }
        this.TKC.put(strSj, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    public Typeface Sj(com.bytedance.adsdk.sP.TKC.TKC tkc) {
        this.Sj.Sj(tkc.Sj(), tkc.TKC());
        Typeface typeface = this.sP.get(this.Sj);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceSj = Sj(sP(tkc), tkc.TKC());
        this.sP.put(this.Sj, typefaceSj);
        return typefaceSj;
    }

    public void Sj(TKC tkc) {
        this.HiB = tkc;
    }

    public void Sj(String str) {
        this.vS = str;
    }
}
