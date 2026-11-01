package com.transsion.postdetail.comment;

import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextWatcher;
import android.text.util.Linkify;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.GalleryActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SocialStatus f48748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f48749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AppCompatEditText f48750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f48751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f48752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f48753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f48754g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ProgressBar f48755h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayoutCompat f48756i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AppCompatTextView f48757j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AppCompatTextView f48758k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AppCompatTextView f48759l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private AppCompatImageView f48760m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ShapeableImageView f48761n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ShapeableImageView f48762o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private AppCompatImageView f48763p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ro.a f48764q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List f48765r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final InputFilter.LengthFilter f48766s;

    public static final class a extends InputFilter.LengthFilter {
        a() {
            super(300);
        }

        /* JADX WARN: Code duplicated, block: B:5:0x0007 A[Catch: Exception -> 0x000a, TRY_LEAVE, TryCatch #0 {Exception -> 0x000a, blocks: (B:3:0x0002, B:5:0x0007), top: B:8:0x0002 }] */
        @Override // android.text.InputFilter.LengthFilter, android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i11, int i12, Spanned spanned, int i13, int i14) {
            if (charSequence != null) {
                try {
                    charSequence.length();
                    if (spanned != null) {
                        spanned.length();
                    }
                } catch (Exception unused) {
                }
            } else if (spanned != null) {
                spanned.length();
            }
            return charSequence;
        }
    }

    public m() {
        this(null, null, null, false, 15, null);
    }

    public m(View view, Dialog dialog, SocialStatus socialStatus, boolean z10) {
        View view2;
        Intrinsics.h(socialStatus, "socialStatus");
        this.f48748a = socialStatus;
        this.f48749b = z10;
        this.f48765r = new ArrayList();
        if (view != null) {
            this.f48750c = (AppCompatEditText) view.findViewById(R$id.comment_input_edit_text);
            this.f48751d = (TextView) view.findViewById(R$id.comment_input_edit_limit);
            this.f48753f = view.findViewById(R$id.comment_input_edit_post);
            this.f48754g = view.findViewById(R$id.comment_input_disable_click);
            this.f48752e = (TextView) view.findViewById(R$id.tv_hint);
            this.f48755h = (ProgressBar) view.findViewById(R$id.progress_bar);
            this.f48756i = (LinearLayoutCompat) view.findViewById(R$id.ll_tint);
            this.f48757j = (AppCompatTextView) view.findViewById(R$id.tv_like);
            this.f48758k = (AppCompatTextView) view.findViewById(R$id.tv_comment);
            this.f48759l = (AppCompatTextView) view.findViewById(R$id.tv_share);
            this.f48760m = (AppCompatImageView) view.findViewById(R$id.iv_download);
            this.f48761n = (ShapeableImageView) view.findViewById(R$id.iv_choose_image);
            this.f48762o = (ShapeableImageView) view.findViewById(R$id.iv_selected_image);
            this.f48763p = (AppCompatImageView) view.findViewById(R$id.icon_delete_image);
            p(z10);
        }
        if (dialog != null) {
            this.f48750c = (AppCompatEditText) dialog.findViewById(R$id.comment_input_edit_text);
            this.f48751d = (TextView) dialog.findViewById(R$id.comment_input_edit_limit);
            this.f48753f = dialog.findViewById(R$id.comment_input_edit_post);
            this.f48752e = (TextView) dialog.findViewById(R$id.tv_hint);
            this.f48755h = (ProgressBar) dialog.findViewById(R$id.progress_bar);
            this.f48756i = (LinearLayoutCompat) dialog.findViewById(R$id.ll_tint);
            this.f48757j = (AppCompatTextView) dialog.findViewById(R$id.tv_like);
            this.f48758k = (AppCompatTextView) dialog.findViewById(R$id.tv_comment);
            this.f48759l = (AppCompatTextView) dialog.findViewById(R$id.tv_share);
            this.f48760m = (AppCompatImageView) dialog.findViewById(R$id.iv_download);
            this.f48761n = (ShapeableImageView) dialog.findViewById(R$id.iv_choose_image);
            this.f48762o = (ShapeableImageView) dialog.findViewById(R$id.iv_selected_image);
            this.f48763p = (AppCompatImageView) dialog.findViewById(R$id.icon_delete_image);
            p(z10);
        }
        AppCompatEditText appCompatEditText = this.f48750c;
        if (appCompatEditText != null) {
            appCompatEditText.setEnabled(z10);
            appCompatEditText.setSingleLine(!z10);
            appCompatEditText.setClickable(!z10);
            if (appCompatEditText.isEnabled()) {
                appCompatEditText.setMaxLines(4);
            }
        }
        if (z10) {
            TextView textView = this.f48751d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        } else {
            TextView textView2 = this.f48751d;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
        }
        if (z10 && (view2 = this.f48753f) != null) {
            view2.setVisibility(0);
        }
        this.f48766s = new a();
    }

    public /* synthetic */ m(View view, Dialog dialog, SocialStatus socialStatus, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : view, (i11 & 2) != 0 ? null : dialog, (i11 & 4) != 0 ? new SocialStatus(true, true, true, true) : socialStatus, (i11 & 8) != 0 ? false : z10);
    }

    private final void A(int i11) {
        D(i11);
        C(i11);
    }

    private final void C(int i11) {
        TextView textView = this.f48751d;
        if (textView != null) {
            if (!this.f48749b || i11 < 0) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(new SpannableStringBuilder(i11 + "/" + q()));
            }
        }
        if (i11 > q()) {
            uh.b.f76753a.d(R$string.comment_max_tips);
        }
    }

    private final void D(int i11) {
        View view = this.f48753f;
        if (view != null) {
            boolean z10 = true;
            if ((1 > i11 || i11 > q()) && this.f48765r.isEmpty()) {
                z10 = false;
            }
            if (view.isEnabled() != z10) {
                view.setEnabled(z10);
            }
        }
    }

    private final i0 e() {
        ro.a aVar = this.f48764q;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    private final void f() {
        Editable text;
        CharSequence charSequenceN1;
        ShapeableImageView shapeableImageView = this.f48762o;
        if (shapeableImageView != null) {
            shapeableImageView.setVisibility(8);
        }
        this.f48765r.clear();
        AppCompatEditText appCompatEditText = this.f48750c;
        D((appCompatEditText == null || (text = appCompatEditText.getText()) == null || (charSequenceN1 = StringsKt.n1(text)) == null) ? 0 : charSequenceN1.length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(m mVar, View view) {
        AppCompatEditText appCompatEditText = mVar.f48750c;
        mVar.r(appCompatEditText != null ? appCompatEditText.getText() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(m mVar, View view) {
        mVar.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(m mVar, View view) {
        mVar.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(m mVar, View view) {
        com.transsion.publish.n.f50455b.a().f(mVar.f48765r);
        GalleryActivity.Companion companion = GalleryActivity.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        companion.a(applicationA, mVar.f48765r, 0, 4, 1);
    }

    private final void p(boolean z10) {
        if (z10) {
            LinearLayoutCompat linearLayoutCompat = this.f48756i;
            if (linearLayoutCompat != null) {
                jg.c.g(linearLayoutCompat);
            }
            AppCompatTextView appCompatTextView = this.f48757j;
            if (appCompatTextView != null) {
                jg.c.g(appCompatTextView);
            }
            AppCompatTextView appCompatTextView2 = this.f48759l;
            if (appCompatTextView2 != null) {
                jg.c.g(appCompatTextView2);
            }
            AppCompatImageView appCompatImageView = this.f48760m;
            if (appCompatImageView != null) {
                jg.c.g(appCompatImageView);
            }
            AppCompatEditText appCompatEditText = this.f48750c;
            if (appCompatEditText != null) {
                jg.c.k(appCompatEditText);
                return;
            }
            return;
        }
        LinearLayoutCompat linearLayoutCompat2 = this.f48756i;
        if (linearLayoutCompat2 != null) {
            jg.c.j(linearLayoutCompat2, this.f48748a.getShowTint());
        }
        AppCompatTextView appCompatTextView3 = this.f48757j;
        if (appCompatTextView3 != null) {
            jg.c.j(appCompatTextView3, this.f48748a.getShowLike());
        }
        AppCompatTextView appCompatTextView4 = this.f48759l;
        if (appCompatTextView4 != null) {
            jg.c.j(appCompatTextView4, this.f48748a.getShowShare());
        }
        AppCompatImageView appCompatImageView2 = this.f48760m;
        if (appCompatImageView2 != null) {
            jg.c.j(appCompatImageView2, this.f48748a.getShowDownload());
        }
        AppCompatEditText appCompatEditText2 = this.f48750c;
        if (appCompatEditText2 != null) {
            jg.c.g(appCompatEditText2);
        }
    }

    private final int q() {
        ro.a aVar = this.f48764q;
        if (aVar != null) {
            return aVar.c();
        }
        return 10;
    }

    private final void r(Editable editable) {
        i0 i0VarE = e();
        if (i0VarE != null) {
            ro.a aVar = this.f48764q;
            i0VarE.S(editable, aVar != null ? aVar.d() : null);
        }
    }

    private final void s() {
        i0 i0VarE = e();
        if (i0VarE != null) {
            i0VarE.E();
        }
    }

    public final void B() {
        AppCompatEditText appCompatEditText = this.f48750c;
        if (appCompatEditText != null) {
            appCompatEditText.setMaxEms(q() * 2);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        i0 i0VarE = e();
        if (i0VarE != null) {
            i0VarE.afterTextChanged(editable);
        }
        TextView textView = this.f48752e;
        if (textView != null) {
            textView.setVisibility((editable == null || editable.length() == 0) ? 0 : 8);
        }
        if ((editable != null ? editable.length() : 0) >= 295) {
            TextView textView2 = this.f48751d;
            if (textView2 != null) {
                textView2.setTextColor(com.blankj.utilcode.util.h.a(R$color.error_50));
                return;
            }
            return;
        }
        TextView textView3 = this.f48751d;
        if (textView3 != null) {
            textView3.setTextColor(com.blankj.utilcode.util.h.a(R$color.text_02));
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        i0 i0VarE = e();
        if (i0VarE != null) {
            i0VarE.beforeTextChanged(charSequence, i11, i12, i13);
        }
    }

    public final void g() {
        ProgressBar progressBar = this.f48755h;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
        View view = this.f48753f;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public final Editable h() {
        AppCompatEditText appCompatEditText = this.f48750c;
        if (appCompatEditText != null) {
            return appCompatEditText.getText();
        }
        return null;
    }

    public final CommentBean i() {
        ro.a aVar = this.f48764q;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }

    public final List j() {
        return this.f48765r;
    }

    public final void k(ro.a aVar) {
        Editable editableB;
        CommentBean commentBeanD;
        this.f48764q = aVar;
        AppCompatEditText appCompatEditText = this.f48750c;
        if (appCompatEditText != null) {
            appCompatEditText.addTextChangedListener(this);
            ro.a aVar2 = this.f48764q;
            if ((aVar2 != null ? aVar2.d() : null) == null) {
                appCompatEditText.setText("");
                appCompatEditText.setSelection(0);
                A(0);
                AppCompatEditText appCompatEditText2 = this.f48750c;
                if (appCompatEditText2 != null) {
                    appCompatEditText2.setHint(appCompatEditText.getContext().getString(R$string.comment_hint_add));
                }
            }
            ro.a aVar3 = this.f48764q;
            if (aVar3 != null && (commentBeanD = aVar3.d()) != null) {
                appCompatEditText.setText("");
                appCompatEditText.setSelection(0);
                A(0);
                AppCompatEditText appCompatEditText3 = this.f48750c;
                if (appCompatEditText3 != null) {
                    appCompatEditText3.setHint(appCompatEditText.getContext().getString(R$string.comment_reply_to, commentBeanD.getNickName()));
                }
            }
            ro.a aVar4 = this.f48764q;
            if (aVar4 != null && (editableB = aVar4.b()) != null) {
                appCompatEditText.setText(editableB);
                appCompatEditText.setSelection(editableB.length());
                A(editableB.length());
            }
            appCompatEditText.setMaxEms(q() * 2);
            if (this.f48749b) {
                appCompatEditText.requestFocus();
                appCompatEditText.setCursorVisible(true);
                if (Build.VERSION.SDK_INT >= 29) {
                    appCompatEditText.setTextCursorDrawable(androidx.core.content.b.getDrawable(appCompatEditText.getContext(), R$drawable.comment_edit_cursor));
                }
            }
            InputFilter[] filters = appCompatEditText.getFilters();
            Intrinsics.g(filters, "getFilters(...)");
            List listO0 = ArraysKt.O0(filters);
            listO0.add(0, this.f48766s);
            appCompatEditText.setFilters((InputFilter[]) listO0.toArray(new InputFilter[0]));
        }
        View view = this.f48753f;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    m.l(this.f48744a, view2);
                }
            });
        }
        ShapeableImageView shapeableImageView = this.f48761n;
        if (shapeableImageView != null) {
            shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    m.m(this.f48745a, view2);
                }
            });
        }
        AppCompatImageView appCompatImageView = this.f48763p;
        if (appCompatImageView != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    m.n(this.f48746a, view2);
                }
            });
        }
        ShapeableImageView shapeableImageView2 = this.f48762o;
        if (shapeableImageView2 != null) {
            shapeableImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.comment.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    m.o(this.f48747a, view2);
                }
            });
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        A(charSequence != null ? charSequence.length() : 0);
        if (this.f48749b) {
            i0 i0VarE = e();
            if (i0VarE != null) {
                i0VarE.onTextChanged(charSequence, i11, i12, i13);
            }
        } else {
            View view = this.f48753f;
            if (view != null) {
                view.setVisibility((charSequence != null ? charSequence.length() : 0) <= 0 ? 8 : 0);
            }
        }
        AppCompatEditText appCompatEditText = this.f48750c;
        if (appCompatEditText != null) {
            Linkify.addLinks(appCompatEditText, 1);
        }
    }

    public final void t() {
        x("");
        ro.a aVar = this.f48764q;
        if (aVar != null) {
            aVar.e();
        }
        p(false);
    }

    public final void u() {
        this.f48765r.clear();
        ShapeableImageView shapeableImageView = this.f48762o;
        if (shapeableImageView != null) {
            shapeableImageView.setVisibility(8);
        }
    }

    public final void v(CommentBean commentBean) {
        ro.a aVar = this.f48764q;
        if (aVar != null) {
            aVar.i(commentBean);
        }
    }

    public final void w(PhotoEntity photoEntity) {
        Editable text;
        CharSequence charSequenceN1;
        Intrinsics.h(photoEntity, "photoEntity");
        ShapeableImageView shapeableImageView = this.f48762o;
        if (shapeableImageView != null) {
            int length = 0;
            shapeableImageView.setVisibility(0);
            this.f48765r.add(photoEntity);
            RequestManager requestManagerWith = Glide.with(shapeableImageView);
            String localPath = photoEntity.getLocalPath();
            if (localPath == null) {
                localPath = "";
            }
            RequestBuilder<Drawable> requestBuilderLoad2 = requestManagerWith.load2(new File(localPath));
            ShapeableImageView shapeableImageView2 = this.f48762o;
            Intrinsics.e(shapeableImageView2);
            requestBuilderLoad2.into(shapeableImageView2);
            AppCompatEditText appCompatEditText = this.f48750c;
            if (appCompatEditText != null && (text = appCompatEditText.getText()) != null && (charSequenceN1 = StringsKt.n1(text)) != null) {
                length = charSequenceN1.length();
            }
            D(length);
        }
    }

    public final void x(CharSequence charSequence) {
        AppCompatEditText appCompatEditText;
        if (this.f48749b || (appCompatEditText = this.f48750c) == null) {
            return;
        }
        appCompatEditText.setText(charSequence);
    }

    public final void y() {
        ProgressBar progressBar = this.f48755h;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
        View view = this.f48753f;
        if (view != null) {
            view.setVisibility(4);
        }
    }

    public final void z() {
        AppCompatEditText appCompatEditText = this.f48750c;
        if (appCompatEditText != null) {
            appCompatEditText.removeTextChangedListener(this);
        }
        View view = this.f48753f;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }
}
