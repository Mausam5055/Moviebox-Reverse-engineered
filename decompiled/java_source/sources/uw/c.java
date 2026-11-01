package uw;

import android.app.Application;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.google.android.material.card.MaterialCardView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsnet.downloader.adapter.u0;
import com.transsnet.downloader.popup.q;
import kotlin.jvm.internal.Intrinsics;
import oh.h;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PopupWindow f76941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private u0.b f76942b;

    private final View c(Context context, final boolean z10) {
        String string;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.popup_report_layout, (ViewGroup) null);
        viewInflate.findViewById(R$id.menu_item1).setOnClickListener(new View.OnClickListener() { // from class: uw.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.d(this.f76937a, z10, view);
            }
        });
        TextView textView = (TextView) viewInflate.findViewById(R$id.menu_item2);
        textView.setOnClickListener(new View.OnClickListener() { // from class: uw.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.e(this.f76939a, z10, view);
            }
        });
        if (z10) {
            textView.setVisibility(8);
            string = textView.getResources().getString(R$string.str_unblock);
        } else {
            string = textView.getResources().getString(R$string.str_block);
        }
        textView.setText(string);
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(c cVar, boolean z10, View view) {
        u0.b bVar = cVar.f76942b;
        if (bVar != null) {
            bVar.b(0, 0, 2, z10);
        }
        PopupWindow popupWindow = cVar.f76941a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(c cVar, boolean z10, View view) {
        u0.b bVar = cVar.f76942b;
        if (bVar != null) {
            bVar.b(0, 0, 1, z10);
        }
        PopupWindow popupWindow = cVar.f76941a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public final void f(u0.b listener) {
        Intrinsics.h(listener, "listener");
        this.f76942b = listener;
    }

    public final void g(View anchorView, boolean z10) {
        Intrinsics.h(anchorView, "anchorView");
        Context context = anchorView.getContext();
        Intrinsics.g(context, "getContext(...)");
        View viewC = c(context, z10);
        PopupWindow popupWindow = new PopupWindow(viewC, -2, -2, true);
        this.f76941a = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        int[] iArrA = q.f59568a.a(anchorView, viewC);
        h hVar = h.f71021a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        int iA = hVar.a(applicationA, 16.0f);
        int i11 = iArrA[0] - iA;
        iArrA[0] = i11;
        int i12 = iArrA[1] - iA;
        iArrA[1] = i12;
        PopupWindow popupWindow2 = this.f76941a;
        if (popupWindow2 != null) {
            popupWindow2.showAtLocation(anchorView, MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START, i11, i12);
        }
    }
}
