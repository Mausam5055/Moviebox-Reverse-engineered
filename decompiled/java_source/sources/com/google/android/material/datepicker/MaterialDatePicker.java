package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.f0;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes4.dex */
public final class MaterialDatePicker<S> extends DialogFragment {
    static final Object E = "CONFIRM_BUTTON_TAG";
    static final Object F = "CANCEL_BUTTON_TAG";
    static final Object G = "TOGGLE_BUTTON_TAG";
    private Button A;
    private boolean B;
    private CharSequence C;
    private CharSequence D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashSet f28805a = new LinkedHashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashSet f28806b = new LinkedHashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedHashSet f28807c = new LinkedHashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedHashSet f28808d = new LinkedHashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DateSelector f28810f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private p f28811g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CalendarConstraints f28812h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private DayViewDecorator f28813i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MaterialCalendar f28814j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f28815k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private CharSequence f28816l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f28817m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f28818n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f28819o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CharSequence f28820p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f28821q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CharSequence f28822r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f28823s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CharSequence f28824t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f28825u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private CharSequence f28826v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private TextView f28827w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f28828x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private CheckableImageButton f28829y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ab.i f28830z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.f28805a.iterator();
            if (!it.hasNext()) {
                MaterialDatePicker.this.dismiss();
            } else {
                android.support.v4.media.session.c.a(it.next());
                MaterialDatePicker.this.j0();
                throw null;
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.f28806b.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    class c implements OnApplyWindowInsetsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f28833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f28834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f28835c;

        c(int i11, View view, int i12) {
            this.f28833a = i11;
            this.f28834b = view;
            this.f28835c = i12;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int i11 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).f79126b;
            if (this.f28833a >= 0) {
                this.f28834b.getLayoutParams().height = this.f28833a + i11;
                View view2 = this.f28834b;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = this.f28834b;
            view3.setPadding(view3.getPaddingLeft(), this.f28835c + i11, this.f28834b.getPaddingRight(), this.f28834b.getPaddingBottom());
            return windowInsetsCompat;
        }
    }

    class d extends o {
        d() {
        }

        @Override // com.google.android.material.datepicker.o
        public void a() {
            MaterialDatePicker.this.A.setEnabled(false);
        }

        @Override // com.google.android.material.datepicker.o
        public void b(Object obj) {
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            materialDatePicker.s0(materialDatePicker.h0());
            MaterialDatePicker.this.A.setEnabled(MaterialDatePicker.this.e0().isSelectionComplete());
        }
    }

    private static Drawable c0(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, g.a.b(context, R$drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], g.a.b(context, R$drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    private void d0(Window window) {
        if (this.B) {
            return;
        }
        View viewFindViewById = requireView().findViewById(R$id.fullscreen_header);
        com.google.android.material.internal.e.a(window, true, f0.h(viewFindViewById), null);
        ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new c(viewFindViewById.getLayoutParams().height, viewFindViewById, viewFindViewById.getPaddingTop()));
        this.B = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DateSelector e0() {
        if (this.f28810f == null) {
            this.f28810f = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f28810f;
    }

    private static CharSequence f0(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String[] strArrSplit = TextUtils.split(String.valueOf(charSequence), "\n");
        return strArrSplit.length > 1 ? strArrSplit[0] : charSequence;
    }

    private String g0() {
        return e0().getSelectionContentDescription(requireContext());
    }

    private static int i0(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_content_padding);
        int i11 = Month.e().f28844c;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(R$dimen.mtrl_calendar_day_width) * i11) + ((i11 - 1) * resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_month_horizontal_padding));
    }

    private int k0(Context context) {
        int i11 = this.f28809e;
        return i11 != 0 ? i11 : e0().getDefaultThemeResId(context);
    }

    private void l0(Context context) {
        this.f28829y.setTag(G);
        this.f28829y.setImageDrawable(c0(context));
        this.f28829y.setChecked(this.f28818n != 0);
        ViewCompat.setAccessibilityDelegate(this.f28829y, null);
        u0(this.f28829y);
        this.f28829y.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f28890a.p0(view);
            }
        });
    }

    static boolean m0(Context context) {
        return q0(context, R.attr.windowFullscreen);
    }

    private boolean n0() {
        return getResources().getConfiguration().orientation == 2;
    }

    static boolean o0(Context context) {
        return q0(context, R$attr.nestedScrollable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p0(View view) {
        this.A.setEnabled(e0().isSelectionComplete());
        this.f28829y.toggle();
        this.f28818n = this.f28818n == 1 ? 0 : 1;
        u0(this.f28829y);
        r0();
    }

    static boolean q0(Context context, int i11) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(xa.b.d(context, R$attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i11});
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z10;
    }

    private void r0() {
        int iK0 = k0(requireContext());
        MaterialCalendar materialCalendarN0 = MaterialCalendar.n0(e0(), iK0, this.f28812h, this.f28813i);
        this.f28814j = materialCalendarN0;
        p pVarX = materialCalendarN0;
        if (this.f28818n == 1) {
            pVarX = MaterialTextInputPicker.X(e0(), iK0, this.f28812h);
        }
        this.f28811g = pVarX;
        t0();
        s0(h0());
        androidx.fragment.app.w wVarP = getChildFragmentManager().p();
        wVarP.s(R$id.mtrl_calendar_frame, this.f28811g);
        wVarP.k();
        this.f28811g.V(new d());
    }

    private void t0() {
        this.f28827w.setText((this.f28818n == 1 && n0()) ? this.D : this.C);
    }

    private void u0(CheckableImageButton checkableImageButton) {
        this.f28829y.setContentDescription(this.f28818n == 1 ? checkableImageButton.getContext().getString(R$string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(R$string.mtrl_picker_toggle_to_text_input_mode));
    }

    public String h0() {
        return e0().getSelectionDisplayString(getContext());
    }

    public final Object j0() {
        return e0().getSelection();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f28807c.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f28809e = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f28810f = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f28812h = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f28813i = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f28815k = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f28816l = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f28818n = bundle.getInt("INPUT_MODE_KEY");
        this.f28819o = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f28820p = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f28821q = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f28822r = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f28823s = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f28824t = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f28825u = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f28826v = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.f28816l;
        if (text == null) {
            text = requireContext().getResources().getText(this.f28815k);
        }
        this.C = text;
        this.D = f0(text);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), k0(requireContext()));
        Context context = dialog.getContext();
        this.f28817m = m0(context);
        this.f28830z = new ab.i(context, null, R$attr.materialCalendarStyle, R$style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.MaterialCalendar, R$attr.materialCalendarStyle, R$style.Widget_MaterialComponents_MaterialCalendar);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.MaterialCalendar_backgroundTint, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f28830z.S(context);
        this.f28830z.d0(ColorStateList.valueOf(color));
        this.f28830z.c0(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f28817m ? R$layout.mtrl_picker_fullscreen : R$layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        DayViewDecorator dayViewDecorator = this.f28813i;
        if (dayViewDecorator != null) {
            dayViewDecorator.initialize(context);
        }
        if (this.f28817m) {
            viewInflate.findViewById(R$id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(i0(context), -2));
        } else {
            viewInflate.findViewById(R$id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(i0(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R$id.mtrl_picker_header_selection_text);
        this.f28828x = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.f28829y = (CheckableImageButton) viewInflate.findViewById(R$id.mtrl_picker_header_toggle);
        this.f28827w = (TextView) viewInflate.findViewById(R$id.mtrl_picker_title_text);
        l0(context);
        this.A = (Button) viewInflate.findViewById(R$id.confirm_button);
        if (e0().isSelectionComplete()) {
            this.A.setEnabled(true);
        } else {
            this.A.setEnabled(false);
        }
        this.A.setTag(E);
        CharSequence charSequence = this.f28820p;
        if (charSequence != null) {
            this.A.setText(charSequence);
        } else {
            int i11 = this.f28819o;
            if (i11 != 0) {
                this.A.setText(i11);
            }
        }
        CharSequence charSequence2 = this.f28822r;
        if (charSequence2 != null) {
            this.A.setContentDescription(charSequence2);
        } else if (this.f28821q != 0) {
            this.A.setContentDescription(getContext().getResources().getText(this.f28821q));
        }
        this.A.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(R$id.cancel_button);
        button.setTag(F);
        CharSequence charSequence3 = this.f28824t;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i12 = this.f28823s;
            if (i12 != 0) {
                button.setText(i12);
            }
        }
        CharSequence charSequence4 = this.f28826v;
        if (charSequence4 != null) {
            button.setContentDescription(charSequence4);
        } else if (this.f28825u != 0) {
            button.setContentDescription(getContext().getResources().getText(this.f28825u));
        }
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f28808d.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f28809e);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f28810f);
        CalendarConstraints.b bVar = new CalendarConstraints.b(this.f28812h);
        MaterialCalendar materialCalendar = this.f28814j;
        Month monthI0 = materialCalendar == null ? null : materialCalendar.i0();
        if (monthI0 != null) {
            bVar.b(monthI0.f28846e);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar.a());
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f28813i);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f28815k);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f28816l);
        bundle.putInt("INPUT_MODE_KEY", this.f28818n);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f28819o);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f28820p);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f28821q);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f28822r);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f28823s);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f28824t);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f28825u);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f28826v);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f28817m) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f28830z);
            d0(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f28830z, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new sa.a(requireDialog(), rect));
        }
        r0();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.f28811g.W();
        super.onStop();
    }

    void s0(String str) {
        this.f28828x.setContentDescription(g0());
        this.f28828x.setText(str);
    }
}
