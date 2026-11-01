package com.transsion.player.longvideo.helper;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f47992d;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(g gVar, ho.j jVar, View view) {
        gVar.f47992d = true;
        FrameLayout gameContainer = jVar.f64618h.f64642g;
        Intrinsics.g(gameContainer, "gameContainer");
        jg.c.g(gameContainer);
        AppCompatImageView ivGameClose = jVar.f64618h.f64645j;
        Intrinsics.g(ivGameClose, "ivGameClose");
        jg.c.g(ivGameClose);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(g gVar) {
        ho.k kVar;
        AppCompatImageView appCompatImageView;
        ho.j jVarB = gVar.b();
        if (jVarB == null || (kVar = jVarB.f64618h) == null || (appCompatImageView = kVar.f64645j) == null) {
            return;
        }
        jg.c.k(appCompatImageView);
    }

    @Override // com.transsion.player.longvideo.helper.d
    public void c(String str, final ho.j viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        super.c(str, viewBinding);
        viewBinding.f64618h.f64645j.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.helper.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.g(this.f47989a, viewBinding, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h(LongVodUiType uiType) {
        fo.a.b bVarA;
        View viewE;
        ViewGroup viewGroup;
        ho.k kVar;
        FrameLayout frameLayout;
        ho.k kVar2;
        FrameLayout frameLayout2;
        ho.k kVar3;
        FrameLayout frameLayout3;
        ho.k kVar4;
        AppCompatImageView appCompatImageView;
        ho.k kVar5;
        FrameLayout frameLayout4;
        ViewGroup viewGroup2;
        Intrinsics.h(uiType, "uiType");
        fo.a.b bVarA2 = a();
        if (bVarA2 != null) {
            bVarA2.d(uiType);
        }
        if (uiType == LongVodUiType.MIDDLE || this.f47992d || (bVarA = a()) == null || (viewE = bVarA.e()) == 0) {
            return;
        }
        ViewParent parent = viewE.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup2 = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            viewGroup = viewGroup2;
            viewGroup.removeView(viewE);
        }
        viewGroup = viewGroup2;
        ok.a aVar = viewE instanceof ok.a ? (ok.a) viewE : null;
        if (aVar != null) {
            aVar.setPageStyle("fullscreen");
        }
        ho.j jVarB = b();
        if (jVarB != null && (kVar5 = jVarB.f64618h) != null && (frameLayout4 = kVar5.f64642g) != null) {
            jg.c.k(frameLayout4);
        }
        ho.j jVarB2 = b();
        if (jVarB2 != null && (kVar4 = jVarB2.f64618h) != null && (appCompatImageView = kVar4.f64645j) != null) {
            jg.c.g(appCompatImageView);
        }
        ho.j jVarB3 = b();
        if (jVarB3 != null && (kVar3 = jVarB3.f64618h) != null && (frameLayout3 = kVar3.f64642g) != null) {
            frameLayout3.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.helper.e
                @Override // java.lang.Runnable
                public final void run() {
                    g.i(this.f47988a);
                }
            }, 3000L);
        }
        ho.j jVarB4 = b();
        if (jVarB4 != null && (kVar2 = jVarB4.f64618h) != null && (frameLayout2 = kVar2.f64642g) != null) {
            frameLayout2.removeAllViews();
        }
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        ho.j jVarB5 = b();
        if (jVarB5 == null || (kVar = jVarB5.f64618h) == null || (frameLayout = kVar.f64642g) == null) {
            return;
        }
        frameLayout.addView(viewE, layoutParams);
    }
}
