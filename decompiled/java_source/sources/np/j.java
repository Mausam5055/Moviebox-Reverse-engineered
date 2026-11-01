package np;

import android.app.Dialog;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$id;
import com.transsion.publish.R$string;
import com.transsion.publish.view.LinkEditText;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f70503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinkEditText f70504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f70505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f70506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f70507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RelativeLayout f70508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f70509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f70510h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private np.b f70511i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Dialog f70512j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private MMKV f70513k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f70514l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ip.b.InterfaceC0793b f70515m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f70516n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final InputFilter.LengthFilter f70517o;

    public static final class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                RelativeLayout relativeLayout = j.this.f70508f;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(4);
                    return;
                }
                return;
            }
            RelativeLayout relativeLayout2 = j.this.f70508f;
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(0);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class b extends InputFilter.LengthFilter {
        b() {
            super(1000);
        }

        @Override // android.text.InputFilter.LengthFilter, android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i11, int i12, Spanned spanned, int i13, int i14) {
            int length;
            if (charSequence != null) {
                try {
                    length = charSequence.length();
                } catch (Exception unused) {
                }
            } else {
                length = 0;
            }
            if (length + (spanned != null ? spanned.length() : 0) > getMax()) {
                uh.b.f76753a.d(R$string.comment_max_tips);
            }
            return charSequence;
        }
    }

    public j() {
        this(null, null, null, null, false, 31, null);
    }

    public j(View view, Dialog dialog, ip.b.InterfaceC0793b interfaceC0793b, View view2, boolean z10) {
        LinkEditText linkEditText;
        View view3;
        this.f70503a = z10;
        this.f70515m = interfaceC0793b;
        this.f70516n = view2;
        this.f70514l = true;
        if (view != null) {
            this.f70504b = (LinkEditText) view.findViewById(R$id.comment_input_edit_text);
            this.f70507e = view.findViewById(R$id.tv_add);
            this.f70506d = (TextView) view.findViewById(R$id.tv_cancel);
            this.f70509g = view.findViewById(R$id.comment_input_disable_click);
            this.f70505c = (TextView) view.findViewById(R$id.tv_hint);
            this.f70508f = (RelativeLayout) view.findViewById(R$id.rl_clear);
        }
        this.f70512j = dialog;
        if (dialog != null) {
            this.f70504b = (LinkEditText) dialog.findViewById(R$id.comment_input_edit_text);
            this.f70507e = dialog.findViewById(R$id.tv_add);
            this.f70505c = (TextView) dialog.findViewById(R$id.tv_hint);
            this.f70506d = (TextView) dialog.findViewById(R$id.tv_cancel);
            this.f70508f = (RelativeLayout) dialog.findViewById(R$id.rl_clear);
            this.f70510h = dialog.findViewById(R$id.comment_input_layout);
        }
        LinkEditText linkEditText2 = this.f70504b;
        if (linkEditText2 != null) {
            linkEditText2.setEnabled(z10);
            linkEditText2.setSingleLine(!z10);
            linkEditText2.setClickable(!z10);
            if (linkEditText2.isEnabled()) {
                linkEditText2.setMaxLines(4);
            }
        }
        if (z10 && (view3 = this.f70507e) != null) {
            view3.setVisibility(0);
        }
        LinkEditText linkEditText3 = this.f70504b;
        if (linkEditText3 != null) {
            KeyboardUtils.i(linkEditText3);
        }
        try {
            MMKV mmkvI = MMKV.I("kv_link_record");
            this.f70513k = mmkvI;
            String string = mmkvI != null ? mmkvI.getString("link", "") : null;
            if (!TextUtils.isEmpty(string) && (linkEditText = this.f70504b) != null) {
                linkEditText.setText(string);
            }
        } catch (Exception unused) {
        }
        this.f70517o = new b();
    }

    public /* synthetic */ j(View view, Dialog dialog, ip.b.InterfaceC0793b interfaceC0793b, View view2, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : view, (i11 & 2) != 0 ? null : dialog, (i11 & 4) != 0 ? null : interfaceC0793b, (i11 & 8) == 0 ? view2 : null, (i11 & 16) != 0 ? false : z10);
    }

    private final np.a h() {
        np.b bVar = this.f70511i;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(final j jVar, View view, boolean z10) {
        LinkEditText linkEditText;
        view.dispatchWindowFocusChanged(z10);
        if (z10) {
            LinkEditText linkEditText2 = jVar.f70504b;
            if (!TextUtils.isEmpty(linkEditText2 != null ? linkEditText2.getText() : null) || (linkEditText = jVar.f70504b) == null) {
                return;
            }
            linkEditText.post(new Runnable() { // from class: np.i
                @Override // java.lang.Runnable
                public final void run() {
                    j.m(this.f70502a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(j jVar) {
        LinkEditText linkEditText = jVar.f70504b;
        if (linkEditText != null) {
            linkEditText.setText("");
        }
        LinkEditText linkEditText2 = jVar.f70504b;
        if (linkEditText2 != null) {
            linkEditText2.setSelection(0);
        }
        LinkEditText linkEditText3 = jVar.f70504b;
        if (linkEditText3 != null) {
            linkEditText3.requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(j jVar) {
        ip.b.InterfaceC0793b interfaceC0793b = jVar.f70515m;
        if (interfaceC0793b != null) {
            interfaceC0793b.completeLoad();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(j jVar, View view) {
        LinkEditText linkEditText = jVar.f70504b;
        jVar.s(String.valueOf(linkEditText != null ? linkEditText.getText() : null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(j jVar, View view) {
        LinkEditText linkEditText = jVar.f70504b;
        String strValueOf = String.valueOf(linkEditText != null ? linkEditText.getText() : null);
        MMKV mmkv = jVar.f70513k;
        if (mmkv != null) {
            mmkv.putString("link", strValueOf);
        }
        jVar.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(j jVar, View view) {
        LinkEditText linkEditText = jVar.f70504b;
        if (linkEditText != null) {
            linkEditText.setText("");
        }
        LinkEditText linkEditText2 = jVar.f70504b;
        if (linkEditText2 != null) {
            linkEditText2.requestFocus();
        }
        LinkEditText linkEditText3 = jVar.f70504b;
        if (linkEditText3 != null) {
            linkEditText3.setSelection(0);
        }
    }

    private final int r() {
        np.b bVar = this.f70511i;
        if (bVar != null) {
            return bVar.c();
        }
        return 10;
    }

    private final void s(String str) {
        if (TextUtils.isEmpty(StringsKt.n1(str).toString()) || str.length() < 5) {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.post_link_hint);
            return;
        }
        String strSubstring = str.substring(0, 5);
        Intrinsics.g(strSubstring, "substring(...)");
        if (!StringsKt.c0(strSubstring, "http", false, 2, null) && !StringsKt.c0(strSubstring, "https", false, 2, null) && !StringsKt.c0(strSubstring, "www.", false, 2, null)) {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.post_link_hint);
            return;
        }
        if (!StringsKt.c0(str, "http:", false, 2, null) && !StringsKt.c0(str, "https:", false, 2, null)) {
            str = "https://" + str;
        }
        MMKV mmkv = this.f70513k;
        if (mmkv != null) {
            mmkv.putString("link", "");
        }
        com.transsion.publish.c.f50445a.a().g(str);
        i();
    }

    private final void t(int i11) {
        v(i11);
        u(i11);
    }

    private final void u(int i11) {
        if (i11 > r()) {
            uh.b.f76753a.d(R$string.comment_max_tips);
        }
    }

    private final void v(int i11) {
        View view = this.f70507e;
        if (view != null) {
            boolean z10 = false;
            if (1 <= i11 && i11 <= r()) {
                z10 = true;
            }
            if (view.isSelected() != z10) {
                view.setSelected(z10);
            }
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        np.a aVarH = h();
        if (aVarH != null) {
            aVarH.afterTextChanged(editable);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        np.a aVarH = h();
        if (aVarH != null) {
            aVarH.beforeTextChanged(charSequence, i11, i12, i13);
        }
    }

    public final void i() {
        this.f70516n = null;
        LinkEditText linkEditText = this.f70504b;
        if (linkEditText != null) {
            KeyboardUtils.e(linkEditText);
        }
        Dialog dialog = this.f70512j;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public final View j() {
        return this.f70504b;
    }

    public final void k(np.b bVar) {
        LinkEditText linkEditText;
        Editable editableB;
        this.f70511i = bVar;
        LinkEditText linkEditText2 = this.f70504b;
        if (linkEditText2 != null) {
            linkEditText2.addTextChangedListener(this);
            np.b bVar2 = this.f70511i;
            if (bVar2 != null && bVar2.d() != null) {
                linkEditText2.setText("");
                linkEditText2.setSelection(0);
                t(0);
            }
            np.b bVar3 = this.f70511i;
            if (bVar3 != null && (editableB = bVar3.b()) != null) {
                linkEditText2.setText(editableB);
                linkEditText2.setSelection(editableB.length());
                t(editableB.length());
            }
            linkEditText2.setMaxEms(r() * 2);
            if (this.f70503a) {
                linkEditText2.requestFocus();
                linkEditText2.setCursorVisible(true);
                if (Build.VERSION.SDK_INT >= 29) {
                    linkEditText2.setTextCursorDrawable(androidx.core.content.b.getDrawable(linkEditText2.getContext(), R$drawable.comment_edit_cursor));
                }
            }
            InputFilter[] filters = linkEditText2.getFilters();
            Intrinsics.g(filters, "getFilters(...)");
            List listO0 = ArraysKt.O0(filters);
            listO0.add(0, this.f70517o);
            linkEditText2.setFilters((InputFilter[]) listO0.toArray(new InputFilter[0]));
        }
        View view = this.f70507e;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: np.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    j.o(this.f70497a, view2);
                }
            });
        }
        TextView textView = this.f70506d;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: np.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    j.p(this.f70498a, view2);
                }
            });
        }
        RelativeLayout relativeLayout = this.f70508f;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: np.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    j.q(this.f70499a, view2);
                }
            });
        }
        LinkEditText linkEditText3 = this.f70504b;
        Editable text = linkEditText3 != null ? linkEditText3.getText() : null;
        if (!TextUtils.isEmpty(text) && (linkEditText = this.f70504b) != null) {
            linkEditText.setText(text);
        }
        LinkEditText linkEditText4 = this.f70504b;
        if (linkEditText4 != null) {
            linkEditText4.addTextChangedListener(new a());
        }
        LinkEditText linkEditText5 = this.f70504b;
        if (linkEditText5 != null) {
            linkEditText5.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: np.g
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z10) {
                    j.l(this.f70500a, view2, z10);
                }
            });
        }
        LinkEditText linkEditText6 = this.f70504b;
        if (linkEditText6 != null) {
            linkEditText6.requestFocus();
        }
        LinkEditText linkEditText7 = this.f70504b;
        if (linkEditText7 != null) {
            linkEditText7.setSelection(text != null ? text.length() : 0);
        }
        LinkEditText linkEditText8 = this.f70504b;
        if (linkEditText8 != null) {
            linkEditText8.postDelayed(new Runnable() { // from class: np.h
                @Override // java.lang.Runnable
                public final void run() {
                    j.n(this.f70501a);
                }
            }, 1000L);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        t(charSequence != null ? charSequence.length() : 0);
        if (this.f70503a) {
            np.a aVarH = h();
            if (aVarH != null) {
                aVarH.onTextChanged(charSequence, i11, i12, i13);
                return;
            }
            return;
        }
        View view = this.f70507e;
        if (view != null) {
            view.setVisibility((charSequence != null ? charSequence.length() : 0) <= 0 ? 8 : 0);
        }
    }
}
