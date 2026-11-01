package com.bigkoo.pickerview.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bigkoo.pickerview.R$id;
import com.bigkoo.pickerview.R$layout;
import com.bigkoo.pickerview.R$string;
import java.text.ParseException;
import java.util.Calendar;
import q5.c;

/* JADX INFO: loaded from: classes2.dex */
public class a extends BasePickerView implements View.OnClickListener {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f19967p;

    public a(p5.a aVar) {
        super(aVar.C);
        this.f19951e = aVar;
        y(aVar.C);
    }

    private void D() {
        b bVar = this.f19967p;
        p5.a aVar = this.f19951e;
        bVar.E(aVar.f72313h, aVar.f72314i);
        x();
    }

    private void E() {
        this.f19967p.H(this.f19951e.f72315j);
        this.f19967p.x(this.f19951e.f72316k);
    }

    private void F() {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = this.f19951e.f72312g;
        if (calendar2 == null) {
            calendar.setTimeInMillis(System.currentTimeMillis());
            i11 = calendar.get(1);
            i12 = calendar.get(2);
            i13 = calendar.get(5);
            i14 = calendar.get(11);
            i15 = calendar.get(12);
            i16 = calendar.get(13);
        } else {
            i11 = calendar2.get(1);
            i12 = this.f19951e.f72312g.get(2);
            i13 = this.f19951e.f72312g.get(5);
            i14 = this.f19951e.f72312g.get(11);
            i15 = this.f19951e.f72312g.get(12);
            i16 = this.f19951e.f72312g.get(13);
        }
        this.f19967p.D(i11, i12, i13, i14, i15, i16);
    }

    private void x() {
        p5.a aVar = this.f19951e;
        Calendar calendar = aVar.f72313h;
        if (calendar == null || aVar.f72314i == null) {
            if (calendar != null) {
                aVar.f72312g = calendar;
                return;
            }
            Calendar calendar2 = aVar.f72314i;
            if (calendar2 != null) {
                aVar.f72312g = calendar2;
                return;
            }
            return;
        }
        Calendar calendar3 = aVar.f72312g;
        if (calendar3 == null || calendar3.getTimeInMillis() < this.f19951e.f72313h.getTimeInMillis() || this.f19951e.f72312g.getTimeInMillis() > this.f19951e.f72314i.getTimeInMillis()) {
            p5.a aVar2 = this.f19951e;
            aVar2.f72312g = aVar2.f72313h;
        }
    }

    private void y(Context context) {
        s();
        o();
        n();
        this.f19951e.getClass();
        LayoutInflater.from(context).inflate(R$layout.pickerview_time, this.f19948b);
        TextView textView = (TextView) findViewById(R$id.tvTitle);
        TextView textView2 = (TextView) findViewById(R$id.btnSubmit);
        TextView textView3 = (TextView) findViewById(R$id.tv_ok);
        TextView textView4 = (TextView) findViewById(R$id.btnCancel);
        textView2.setTag("submit");
        textView3.setTag("submit");
        textView4.setTag("cancel");
        textView2.setOnClickListener(this);
        textView3.setOnClickListener(this);
        textView4.setOnClickListener(this);
        textView2.setText(TextUtils.isEmpty(this.f19951e.D) ? context.getResources().getString(R$string.pickerview_submit) : this.f19951e.D);
        textView4.setText(TextUtils.isEmpty(this.f19951e.E) ? context.getResources().getString(R$string.pickerview_cancel) : this.f19951e.E);
        textView.setText(TextUtils.isEmpty(this.f19951e.F) ? "" : this.f19951e.F);
        textView.setTextColor(this.f19951e.I);
        textView.setTextSize(this.f19951e.M);
        z((LinearLayout) findViewById(R$id.timepicker));
    }

    private void z(LinearLayout linearLayout) {
        int i11;
        p5.a aVar = this.f19951e;
        this.f19967p = new b(linearLayout, aVar.f72311f, aVar.B, aVar.N);
        this.f19951e.getClass();
        this.f19967p.C(this.f19951e.f72318m);
        p5.a aVar2 = this.f19951e;
        int i12 = aVar2.f72315j;
        if (i12 != 0 && (i11 = aVar2.f72316k) != 0 && i12 <= i11) {
            E();
        }
        p5.a aVar3 = this.f19951e;
        Calendar calendar = aVar3.f72313h;
        if (calendar == null || aVar3.f72314i == null) {
            if (calendar == null) {
                Calendar calendar2 = aVar3.f72314i;
                if (calendar2 != null && calendar2.get(1) > 2100) {
                    throw new IllegalArgumentException("The endDate should not be later than 2100");
                }
                D();
            } else {
                if (calendar.get(1) < 1900) {
                    throw new IllegalArgumentException("The startDate can not as early as 1900");
                }
                D();
            }
        } else {
            if (calendar.getTimeInMillis() > this.f19951e.f72314i.getTimeInMillis()) {
                throw new IllegalArgumentException("startDate can't be later than endDate");
            }
            D();
        }
        F();
        b bVar = this.f19967p;
        p5.a aVar4 = this.f19951e;
        bVar.y(aVar4.f72319n, aVar4.f72320o, aVar4.f72321p, aVar4.f72322q, aVar4.f72323r, aVar4.f72324s);
        b bVar2 = this.f19967p;
        p5.a aVar5 = this.f19951e;
        bVar2.M(aVar5.f72325t, aVar5.f72326u, aVar5.f72327v, aVar5.f72328w, aVar5.f72329x, aVar5.f72330y);
        u(this.f19951e.U);
        this.f19967p.s(this.f19951e.f72317l);
        this.f19967p.u(this.f19951e.Q);
        this.f19967p.w(this.f19951e.X);
        this.f19967p.A(this.f19951e.S);
        this.f19967p.L(this.f19951e.O);
        this.f19967p.J(this.f19951e.P);
        this.f19967p.p(this.f19951e.V);
    }

    public void A() {
        if (this.f19951e.f72306a != null) {
            try {
                this.f19951e.f72306a.a(b.f19968y.parse(this.f19967p.o()), this.f19958l);
            } catch (ParseException e11) {
                e11.printStackTrace();
            }
        }
    }

    public void B(Calendar calendar) {
        this.f19951e.f72312g = calendar;
        F();
    }

    public void C() {
        c cVar = this.f19951e.f72306a;
        if (cVar != null) {
            cVar.a(null, this.f19958l);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (((String) view.getTag()).equals("submit")) {
            A();
        } else {
            C();
        }
        f();
    }

    @Override // com.bigkoo.pickerview.view.BasePickerView
    public boolean p() {
        return this.f19951e.T;
    }
}
