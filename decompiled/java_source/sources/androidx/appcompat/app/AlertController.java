package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class AlertController {
    NestedScrollView A;
    private Drawable C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private View G;
    ListAdapter H;
    private int J;
    private int K;
    int L;
    int M;
    int N;
    int O;
    private boolean P;
    Handler R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final w f946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Window f947c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f949e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f950f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ListView f951g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f952h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f953i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f954j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f955k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f956l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f957m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Button f959o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CharSequence f960p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    Message f961q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Drawable f962r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    Button f963s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CharSequence f964t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    Message f965u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Drawable f966v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    Button f967w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CharSequence f968x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Message f969y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Drawable f970z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f958n = false;
    private int B = 0;
    int I = -1;
    private int Q = 0;
    private final View.OnClickListener S = new a();

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$3, reason: invalid class name */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ View val$bottom;
        final /* synthetic */ View val$top;

        AnonymousClass3(View view, View view2) {
            this.val$top = view;
            this.val$bottom = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.f(AlertController.this.A, this.val$top, this.val$bottom);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$5, reason: invalid class name */
    class AnonymousClass5 implements Runnable {
        final /* synthetic */ View val$bottom;
        final /* synthetic */ View val$top;

        AnonymousClass5(View view, View view2) {
            this.val$top = view;
            this.val$bottom = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.f(AlertController.this.f951g, this.val$top, this.val$bottom);
        }
    }

    public static class RecycleListView extends ListView {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f971a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f972b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecycleListView);
            this.f972b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f971a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.RecycleListView_paddingTopNoTitle, -1);
        }

        public void setHasDecor(boolean z10, boolean z11) {
            if (z11 && z10) {
                return;
            }
            setPadding(getPaddingLeft(), z10 ? getPaddingTop() : this.f971a, getPaddingRight(), z11 ? getPaddingBottom() : this.f972b);
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message messageObtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            if (view == alertController.f959o && (message3 = alertController.f961q) != null) {
                messageObtain = Message.obtain(message3);
            } else if (view != alertController.f963s || (message2 = alertController.f965u) == null) {
                messageObtain = (view != alertController.f967w || (message = alertController.f969y) == null) ? null : Message.obtain(message);
            } else {
                messageObtain = Message.obtain(message2);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.R.obtainMessage(1, alertController2.f946b).sendToTarget();
        }
    }

    public static class b {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f974a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LayoutInflater f975b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Drawable f977d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CharSequence f979f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f980g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CharSequence f981h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public CharSequence f982i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Drawable f983j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public DialogInterface.OnClickListener f984k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public CharSequence f985l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public Drawable f986m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public DialogInterface.OnClickListener f987n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public CharSequence f988o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public Drawable f989p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public DialogInterface.OnClickListener f990q;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public DialogInterface.OnCancelListener f992s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public DialogInterface.OnDismissListener f993t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public DialogInterface.OnKeyListener f994u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public CharSequence[] f995v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public ListAdapter f996w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public DialogInterface.OnClickListener f997x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f998y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public View f999z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f976c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f978e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean O = true;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f991r = true;

        class a extends ArrayAdapter {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ RecycleListView f1000a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int i11, int i12, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i11, i12, charSequenceArr);
                this.f1000a = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i11, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i11, view, viewGroup);
                boolean[] zArr = b.this.F;
                if (zArr != null && zArr[i11]) {
                    this.f1000a.setItemChecked(i11, true);
                }
                return view2;
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$b$b, reason: collision with other inner class name */
        class C0020b extends CursorAdapter {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f1002a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final int f1003b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ RecycleListView f1004c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ AlertController f1005d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0020b(Context context, Cursor cursor, boolean z10, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z10);
                this.f1004c = recycleListView;
                this.f1005d = alertController;
                Cursor cursor2 = getCursor();
                this.f1002a = cursor2.getColumnIndexOrThrow(b.this.L);
                this.f1003b = cursor2.getColumnIndexOrThrow(b.this.M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f1002a));
                this.f1004c.setItemChecked(cursor.getPosition(), cursor.getInt(this.f1003b) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return b.this.f975b.inflate(this.f1005d.M, viewGroup, false);
            }
        }

        class c implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AlertController f1007a;

            c(AlertController alertController) {
                this.f1007a = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
                b.this.f997x.onClick(this.f1007a.f946b, i11);
                if (b.this.H) {
                    return;
                }
                this.f1007a.f946b.dismiss();
            }
        }

        class d implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ RecycleListView f1009a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AlertController f1010b;

            d(RecycleListView recycleListView, AlertController alertController) {
                this.f1009a = recycleListView;
                this.f1010b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
                boolean[] zArr = b.this.F;
                if (zArr != null) {
                    zArr[i11] = this.f1009a.isItemChecked(i11);
                }
                b.this.J.onClick(this.f1010b.f946b, i11, this.f1009a.isItemChecked(i11));
            }
        }

        public b(Context context) {
            this.f974a = context;
            this.f975b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void b(AlertController alertController) {
            ListAdapter dVar;
            RecycleListView recycleListView = (RecycleListView) this.f975b.inflate(alertController.L, (ViewGroup) null);
            if (this.G) {
                dVar = this.K == null ? new a(this.f974a, alertController.M, R.id.text1, this.f995v, recycleListView) : new C0020b(this.f974a, this.K, false, recycleListView, alertController);
            } else {
                int i11 = this.H ? alertController.N : alertController.O;
                if (this.K != null) {
                    dVar = new SimpleCursorAdapter(this.f974a, i11, this.K, new String[]{this.L}, new int[]{R.id.text1});
                } else {
                    dVar = this.f996w;
                    if (dVar == null) {
                        dVar = new d(this.f974a, i11, R.id.text1, this.f995v);
                    }
                }
            }
            alertController.H = dVar;
            alertController.I = this.I;
            if (this.f997x != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f951g = recycleListView;
        }

        public void a(AlertController alertController) {
            View view = this.f980g;
            if (view != null) {
                alertController.l(view);
            } else {
                CharSequence charSequence = this.f979f;
                if (charSequence != null) {
                    alertController.q(charSequence);
                }
                Drawable drawable = this.f977d;
                if (drawable != null) {
                    alertController.n(drawable);
                }
                int i11 = this.f976c;
                if (i11 != 0) {
                    alertController.m(i11);
                }
                int i12 = this.f978e;
                if (i12 != 0) {
                    alertController.m(alertController.c(i12));
                }
            }
            CharSequence charSequence2 = this.f981h;
            if (charSequence2 != null) {
                alertController.o(charSequence2);
            }
            CharSequence charSequence3 = this.f982i;
            if (charSequence3 != null || this.f983j != null) {
                alertController.k(-1, charSequence3, this.f984k, null, this.f983j);
            }
            CharSequence charSequence4 = this.f985l;
            if (charSequence4 != null || this.f986m != null) {
                alertController.k(-2, charSequence4, this.f987n, null, this.f986m);
            }
            CharSequence charSequence5 = this.f988o;
            if (charSequence5 != null || this.f989p != null) {
                alertController.k(-3, charSequence5, this.f990q, null, this.f989p);
            }
            if (this.f995v != null || this.K != null || this.f996w != null) {
                b(alertController);
            }
            View view2 = this.f999z;
            if (view2 != null) {
                if (this.E) {
                    alertController.t(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.s(view2);
                    return;
                }
            }
            int i13 = this.f998y;
            if (i13 != 0) {
                alertController.r(i13);
            }
        }
    }

    private static final class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference f1012a;

        public c(DialogInterface dialogInterface) {
            this.f1012a = new WeakReference(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == -3 || i11 == -2 || i11 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f1012a.get(), message.what);
            } else {
                if (i11 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    private static class d extends ArrayAdapter {
        public d(Context context, int i11, int i12, CharSequence[] charSequenceArr) {
            super(context, i11, i12, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i11) {
            return i11;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, w wVar, Window window) {
        this.f945a = context;
        this.f946b = wVar;
        this.f947c = window;
        this.R = new c(wVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.AlertDialog, R$attr.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_android_layout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_listLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_listItemLayout, 0);
        this.P = typedArrayObtainStyledAttributes.getBoolean(R$styleable.AlertDialog_showTitle, true);
        this.f948d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        wVar.supportRequestWindowFeature(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    static void f(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    private ViewGroup i(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    private int j() {
        int i11 = this.K;
        return (i11 != 0 && this.Q == 1) ? i11 : this.J;
    }

    private void p(ViewGroup viewGroup, View view, int i11, int i12) {
        View viewFindViewById = this.f947c.findViewById(R$id.scrollIndicatorUp);
        View viewFindViewById2 = this.f947c.findViewById(R$id.scrollIndicatorDown);
        ViewCompat.setScrollIndicators(view, i11, i12);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
    }

    private void u(ViewGroup viewGroup) {
        int i11;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.f959o = button;
        button.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f960p) && this.f962r == null) {
            this.f959o.setVisibility(8);
            i11 = 0;
        } else {
            this.f959o.setText(this.f960p);
            Drawable drawable = this.f962r;
            if (drawable != null) {
                int i12 = this.f948d;
                drawable.setBounds(0, 0, i12, i12);
                this.f959o.setCompoundDrawables(this.f962r, null, null, null);
            }
            this.f959o.setVisibility(0);
            i11 = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.f963s = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f964t) && this.f966v == null) {
            this.f963s.setVisibility(8);
        } else {
            this.f963s.setText(this.f964t);
            Drawable drawable2 = this.f966v;
            if (drawable2 != null) {
                int i13 = this.f948d;
                drawable2.setBounds(0, 0, i13, i13);
                this.f963s.setCompoundDrawables(this.f966v, null, null, null);
            }
            this.f963s.setVisibility(0);
            i11 |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.f967w = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f968x) && this.f970z == null) {
            this.f967w.setVisibility(8);
        } else {
            this.f967w.setText(this.f968x);
            Drawable drawable3 = this.f970z;
            if (drawable3 != null) {
                int i14 = this.f948d;
                drawable3.setBounds(0, 0, i14, i14);
                this.f967w.setCompoundDrawables(this.f970z, null, null, null);
            }
            this.f967w.setVisibility(0);
            i11 |= 4;
        }
        if (z(this.f945a)) {
            if (i11 == 1) {
                b(this.f959o);
            } else if (i11 == 2) {
                b(this.f963s);
            } else if (i11 == 4) {
                b(this.f967w);
            }
        }
        if (i11 != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void v(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f947c.findViewById(R$id.scrollView);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f950f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f951g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.A);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.f951g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    private void w(ViewGroup viewGroup) {
        View viewInflate = this.f952h;
        if (viewInflate == null) {
            viewInflate = this.f953i != 0 ? LayoutInflater.from(this.f945a).inflate(this.f953i, viewGroup, false) : null;
        }
        boolean z10 = viewInflate != null;
        if (!z10 || !a(viewInflate)) {
            this.f947c.setFlags(131072, 131072);
        }
        if (!z10) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f947c.findViewById(R$id.custom);
        frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.f958n) {
            frameLayout.setPadding(this.f954j, this.f955k, this.f956l, this.f957m);
        }
        if (this.f951g != null) {
            ((LinearLayout.LayoutParams) ((LinearLayoutCompat.a) viewGroup.getLayoutParams())).weight = 0.0f;
        }
    }

    private void x(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f947c.findViewById(R$id.title_template).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f947c.findViewById(R.id.icon);
        if (TextUtils.isEmpty(this.f949e) || !this.P) {
            this.f947c.findViewById(R$id.title_template).setVisibility(8);
            this.D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f947c.findViewById(R$id.alertTitle);
        this.E = textView;
        textView.setText(this.f949e);
        int i11 = this.B;
        if (i11 != 0) {
            this.D.setImageResource(i11);
            return;
        }
        Drawable drawable = this.C;
        if (drawable != null) {
            this.D.setImageDrawable(drawable);
        } else {
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void y() {
        View viewFindViewById;
        ListAdapter listAdapter;
        View viewFindViewById2;
        View viewFindViewById3 = this.f947c.findViewById(R$id.parentPanel);
        View viewFindViewById4 = viewFindViewById3.findViewById(R$id.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(R$id.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(R$id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(R$id.customPanel);
        w(viewGroup);
        View viewFindViewById7 = viewGroup.findViewById(R$id.topPanel);
        View viewFindViewById8 = viewGroup.findViewById(R$id.contentPanel);
        View viewFindViewById9 = viewGroup.findViewById(R$id.buttonPanel);
        ViewGroup viewGroupI = i(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupI2 = i(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupI3 = i(viewFindViewById9, viewFindViewById6);
        v(viewGroupI2);
        u(viewGroupI3);
        x(viewGroupI);
        boolean z10 = viewGroup.getVisibility() != 8;
        boolean z11 = (viewGroupI == null || viewGroupI.getVisibility() == 8) ? 0 : 1;
        boolean z12 = (viewGroupI3 == null || viewGroupI3.getVisibility() == 8) ? false : true;
        if (!z12 && viewGroupI2 != null && (viewFindViewById2 = viewGroupI2.findViewById(R$id.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z11 != 0) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View viewFindViewById10 = (this.f950f == null && this.f951g == null) ? null : viewGroupI.findViewById(R$id.titleDividerNoCustom);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupI2 != null && (viewFindViewById = viewGroupI2.findViewById(R$id.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.f951g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z11, z12);
        }
        if (!z10) {
            View view = this.f951g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                p(viewGroupI2, view, z11 | (z12 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f951g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i11 = this.I;
        if (i11 > -1) {
            listView2.setItemChecked(i11, true);
            listView2.setSelection(i11);
        }
    }

    private static boolean z(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public int c(int i11) {
        TypedValue typedValue = new TypedValue();
        this.f945a.getTheme().resolveAttribute(i11, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView d() {
        return this.f951g;
    }

    public void e() {
        this.f946b.setContentView(j());
        y();
    }

    public boolean g(int i11, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public boolean h(int i11, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public void k(int i11, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i11, onClickListener);
        }
        if (i11 == -3) {
            this.f968x = charSequence;
            this.f969y = message;
            this.f970z = drawable;
        } else if (i11 == -2) {
            this.f964t = charSequence;
            this.f965u = message;
            this.f966v = drawable;
        } else {
            if (i11 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f960p = charSequence;
            this.f961q = message;
            this.f962r = drawable;
        }
    }

    public void l(View view) {
        this.G = view;
    }

    public void m(int i11) {
        this.C = null;
        this.B = i11;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i11 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }

    public void n(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            }
        }
    }

    public void o(CharSequence charSequence) {
        this.f950f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void q(CharSequence charSequence) {
        this.f949e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void r(int i11) {
        this.f952h = null;
        this.f953i = i11;
        this.f958n = false;
    }

    public void s(View view) {
        this.f952h = view;
        this.f953i = 0;
        this.f958n = false;
    }

    public void t(View view, int i11, int i12, int i13, int i14) {
        this.f952h = view;
        this.f953i = 0;
        this.f958n = true;
        this.f954j = i11;
        this.f955k = i12;
        this.f956l = i13;
        this.f957m = i14;
    }
}
