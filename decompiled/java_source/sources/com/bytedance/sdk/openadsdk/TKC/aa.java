package com.bytedance.sdk.openadsdk.TKC;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.core.view.GravityCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.Locale;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class aa extends Dialog {
    private String Dq;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq EjP;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq HiB;
    private String Jcg;
    private com.bytedance.sdk.openadsdk.core.HiB.HiB Sj;
    private final TEQ TEQ;
    private com.bytedance.sdk.openadsdk.core.HiB.sP TKC;
    private Sj sP;
    private String uA;
    private com.bytedance.sdk.openadsdk.core.HiB.EjP vS;

    public interface Sj {
        void Sj();

        void Sj(int i11, FilterWord filterWord, String str);

        void TKC();

        void sP();
    }

    public aa(@NonNull Context context, TEQ teq) {
        super(context, ib.vS(context, "tt_quick_option_dialog"));
        setCanceledOnTouchOutside(false);
        this.TEQ = teq;
    }

    private void EjP() {
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.TKC.aa.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (aa.this.sP != null) {
                    aa.this.sP.TKC();
                }
            }
        });
    }

    private com.bytedance.sdk.openadsdk.core.HiB.HiB Sj(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        hiB.setOrientation(1);
        hiB.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_dislike_dialog_bg"));
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        jcg.setLayoutParams(new LinearLayout.LayoutParams(-1, FPG.sP(context, 48.0f)));
        this.vS = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        int iSP = FPG.sP(context, 24.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iSP, iSP);
        layoutParams.addRule(16);
        layoutParams.addRule(11);
        int iSP2 = FPG.sP(context, 10.0f);
        layoutParams.topMargin = iSP2;
        layoutParams.rightMargin = iSP2;
        this.vS.setLayoutParams(layoutParams);
        this.vS.setClickable(true);
        this.vS.setFocusable(true);
        this.vS.setImageDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_titlebar_close_seletor"));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(16);
        layoutParams2.topMargin = FPG.sP(context, 12.0f);
        dq2.setLayoutParams(layoutParams2);
        dq2.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        dq2.setGravity(17);
        dq2.setSingleLine(true);
        dq2.setText(ib.Sj(context, "tt_other_reason"));
        dq2.setTextColor(Color.parseColor("#161823"));
        dq2.setTextSize(15.0f);
        dq2.setTypeface(Typeface.defaultFromStyle(0));
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, FPG.sP(context, 0.5f)));
        view.setBackgroundColor(Color.argb(51, 22, 24, 35));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        hiB2.setOrientation(1);
        com.bytedance.sdk.openadsdk.core.HiB.sP sPVar = new com.bytedance.sdk.openadsdk.core.HiB.sP(context);
        this.TKC = sPVar;
        sPVar.setFilters(new InputFilter[]{new InputFilter.LengthFilter(200), new InputFilter.AllCaps()});
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.leftMargin = FPG.sP(context, 16.0f);
        layoutParams3.rightMargin = FPG.sP(context, 16.0f);
        layoutParams3.topMargin = FPG.sP(context, 11.5f);
        this.TKC.setLayoutParams(layoutParams3);
        this.TKC.setLines(4);
        this.TKC.setGravity(48);
        this.TKC.setTextSize(15.0f);
        this.TKC.setTextColor(Color.rgb(22, 24, 35));
        this.TKC.setHintTextColor(Color.parseColor("#57161823"));
        this.TKC.setBackground(null);
        this.TKC.setImeOptions(ASTNode.DEOP);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB3 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        int iSP3 = FPG.sP(context, 16.0f);
        int iSP4 = FPG.sP(context, 17.0f);
        hiB3.setPadding(iSP3, iSP4, iSP3, iSP4);
        hiB3.setLayoutParams(layoutParams4);
        hiB3.setOrientation(0);
        this.EjP = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2);
        layoutParams5.weight = 1.0f;
        layoutParams5.gravity = GravityCompat.START;
        this.EjP.setLayoutParams(layoutParams5);
        this.EjP.setText(String.format("0%s", "/200"));
        this.EjP.setGravity(GravityCompat.START);
        this.EjP.setTextColor(Color.parseColor("#57161823"));
        this.EjP.setTextSize(15.0f);
        this.HiB = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = GravityCompat.END;
        this.HiB.setLayoutParams(layoutParams6);
        this.HiB.setTextSize(14.0f);
        this.HiB.setTextColor(-1);
        this.HiB.setVisibility(0);
        this.HiB.setSingleLine(true);
        int iSP5 = FPG.sP(context, 27.0f);
        int iSP6 = FPG.sP(context, 5.0f);
        this.HiB.setPadding(iSP5, iSP6, iSP5, iSP6);
        int iSP7 = FPG.sP(context, 6.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        float f11 = iSP7;
        gradientDrawable.setCornerRadius(f11);
        int iRgb = Color.rgb(254, 44, 85);
        gradientDrawable.setColor(iRgb);
        gradientDrawable.setAlpha(102);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(f11);
        gradientDrawable2.setColor(iRgb);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_enabled}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        this.HiB.setBackground(stateListDrawable);
        this.HiB.setText(ib.Sj(context, "tt_done"));
        this.HiB.setEnabled(false);
        hiB.addView(jcg);
        hiB.addView(view);
        hiB.addView(hiB2);
        jcg.addView(this.vS);
        jcg.addView(dq2);
        hiB2.addView(this.TKC);
        hiB2.addView(hiB3);
        hiB3.addView(this.EjP);
        hiB3.addView(this.HiB);
        return hiB;
    }

    private void Sj(View view) {
        Sj((EditText) this.TKC);
        TEQ teq = this.TEQ;
        if (teq != null) {
            String strJcg = teq.Jcg();
            if (!TextUtils.isEmpty(strJcg)) {
                this.TKC.setText(strJcg);
                this.EjP.setText(String.format(Locale.getDefault(), "%d%s", Integer.valueOf(strJcg.length()), "/200"));
            }
            this.HiB.setEnabled(true ^ TextUtils.isEmpty(strJcg));
        }
        this.HiB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TKC.aa.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String string = aa.this.TKC.getText().toString();
                if (aa.this.sP != null) {
                    aa.this.sP.Sj(4, TEQ.Sj, string);
                }
                aa.this.dismiss();
            }
        });
        this.vS.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TKC.aa.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (aa.this.sP != null) {
                    aa.this.sP.sP();
                }
                aa.this.dismiss();
            }
        });
        this.TKC.addTextChangedListener(new TextWatcher() { // from class: com.bytedance.sdk.openadsdk.TKC.aa.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
                com.bytedance.sdk.openadsdk.core.HiB.Dq dq2;
                int iRound = Math.round(charSequence.length());
                aa.this.EjP.setText(iRound + "/200");
                boolean z10 = true;
                if (iRound <= 0) {
                    dq2 = aa.this.HiB;
                    if (aa.this.TEQ == null || TextUtils.isEmpty(aa.this.TEQ.Jcg())) {
                        z10 = false;
                    }
                } else if (aa.this.HiB.isEnabled()) {
                    return;
                } else {
                    dq2 = aa.this.HiB;
                }
                dq2.setEnabled(z10);
            }
        });
    }

    public static void Sj(EditText editText) {
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.bytedance.sdk.openadsdk.TKC.aa.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i11, int i12, Spanned spanned, int i13, int i14) {
                while (i11 < i12) {
                    int type = Character.getType(charSequence.charAt(i11));
                    if (type == 19 || type == 28) {
                        return "";
                    }
                    i11++;
                }
                return null;
            }
        }, new InputFilter.LengthFilter(200)});
    }

    private void TKC() {
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        Window window = getWindow();
        if (window != null) {
            if (window.getDecorView() != null) {
                window.getDecorView().setPadding(0, 0, 0, 0);
            }
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
            window.setGravity(80);
        }
    }

    public void Sj() {
        com.bytedance.sdk.openadsdk.core.HiB.sP sPVar = this.TKC;
        if (sPVar == null) {
            return;
        }
        sPVar.requestFocus();
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(5);
        }
    }

    public void Sj(Sj sj2) {
        this.sP = sj2;
    }

    public void Sj(String str) {
        this.uA = str;
    }

    public void Sj(String str, String str2) {
        this.Jcg = str;
        this.Dq = str2;
        TEQ teq = this.TEQ;
        if (teq != null) {
            teq.EjP(str2);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        sP();
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiBSj = Sj(dNu.Sj());
        this.Sj = hiBSj;
        setContentView(hiBSj);
        Sj(this.Sj);
        TKC();
        Sj();
        EjP();
    }

    public void sP() {
        InputMethodManager inputMethodManager;
        com.bytedance.sdk.openadsdk.core.HiB.sP sPVar = this.TKC;
        if (sPVar == null || (inputMethodManager = (InputMethodManager) sPVar.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.Sj.getWindowToken(), 0);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        Sj sj2 = this.sP;
        if (sj2 != null) {
            sj2.Sj();
        }
    }
}
