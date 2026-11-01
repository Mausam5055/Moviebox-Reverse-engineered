package com.bigkoo.pickerview.view;

import android.view.View;
import com.bigkoo.pickerview.R$id;
import com.bigkoo.pickerview.R$string;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.contrarywind.view.WheelView;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static DateFormat f19968y = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f19969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WheelView f19970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WheelView f19971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WheelView f19972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WheelView f19973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WheelView f19974f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WheelView f19975g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f19976h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean[] f19977i;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f19984p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f19985q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f19986r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f19987s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f19988t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f19989u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private WheelView.DividerType f19990v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private q5.a f19992x;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f19978j = 1900;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f19979k = 2100;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f19980l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f19981m = 12;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f19982n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f19983o = 31;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f19991w = false;

    class a implements n7.b {
        a() {
        }

        @Override // n7.b
        public void a(int i11) {
            int iH;
            int i12 = i11 + b.this.f19978j;
            b.this.f19971c.setAdapter(new n5.a(r5.a.d(i12)));
            if (r5.a.g(i12) == 0 || b.this.f19971c.getCurrentItem() <= r5.a.g(i12) - 1) {
                b.this.f19971c.setCurrentItem(b.this.f19971c.getCurrentItem());
            } else {
                b.this.f19971c.setCurrentItem(b.this.f19971c.getCurrentItem() + 1);
            }
            if (r5.a.g(i12) == 0 || b.this.f19971c.getCurrentItem() <= r5.a.g(i12) - 1) {
                b.this.f19972d.setAdapter(new n5.a(r5.a.b(r5.a.h(i12, b.this.f19971c.getCurrentItem() + 1))));
                iH = r5.a.h(i12, b.this.f19971c.getCurrentItem() + 1);
            } else if (b.this.f19971c.getCurrentItem() == r5.a.g(i12) + 1) {
                b.this.f19972d.setAdapter(new n5.a(r5.a.b(r5.a.f(i12))));
                iH = r5.a.f(i12);
            } else {
                b.this.f19972d.setAdapter(new n5.a(r5.a.b(r5.a.h(i12, b.this.f19971c.getCurrentItem()))));
                iH = r5.a.h(i12, b.this.f19971c.getCurrentItem());
            }
            int i13 = iH - 1;
            if (b.this.f19972d.getCurrentItem() > i13) {
                b.this.f19972d.setCurrentItem(i13);
            }
            if (b.this.f19992x != null) {
                b.this.f19992x.a();
            }
        }
    }

    /* JADX INFO: renamed from: com.bigkoo.pickerview.view.b$b, reason: collision with other inner class name */
    class C0183b implements n7.b {
        C0183b() {
        }

        @Override // n7.b
        public void a(int i11) {
            int iH;
            int currentItem = b.this.f19970b.getCurrentItem() + b.this.f19978j;
            if (r5.a.g(currentItem) == 0 || i11 <= r5.a.g(currentItem) - 1) {
                int i12 = i11 + 1;
                b.this.f19972d.setAdapter(new n5.a(r5.a.b(r5.a.h(currentItem, i12))));
                iH = r5.a.h(currentItem, i12);
            } else if (b.this.f19971c.getCurrentItem() == r5.a.g(currentItem) + 1) {
                b.this.f19972d.setAdapter(new n5.a(r5.a.b(r5.a.f(currentItem))));
                iH = r5.a.f(currentItem);
            } else {
                b.this.f19972d.setAdapter(new n5.a(r5.a.b(r5.a.h(currentItem, i11))));
                iH = r5.a.h(currentItem, i11);
            }
            int i13 = iH - 1;
            if (b.this.f19972d.getCurrentItem() > i13) {
                b.this.f19972d.setCurrentItem(i13);
            }
            if (b.this.f19992x != null) {
                b.this.f19992x.a();
            }
        }
    }

    class c implements n7.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f19995a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f19996b;

        c(List list, List list2) {
            this.f19995a = list;
            this.f19996b = list2;
        }

        @Override // n7.b
        public void a(int i11) {
            int i12 = i11 + b.this.f19978j;
            b.this.f19984p = i12;
            int currentItem = b.this.f19971c.getCurrentItem();
            if (b.this.f19978j == b.this.f19979k) {
                b.this.f19971c.setAdapter(new n5.b(b.this.f19980l, b.this.f19981m));
                if (currentItem > b.this.f19971c.getAdapter().a() - 1) {
                    currentItem = b.this.f19971c.getAdapter().a() - 1;
                    b.this.f19971c.setCurrentItem(currentItem);
                }
                int i13 = currentItem + b.this.f19980l;
                if (b.this.f19980l == b.this.f19981m) {
                    b bVar = b.this;
                    bVar.F(i12, i13, bVar.f19982n, b.this.f19983o, this.f19995a, this.f19996b);
                } else if (i13 == b.this.f19980l) {
                    b bVar2 = b.this;
                    bVar2.F(i12, i13, bVar2.f19982n, 31, this.f19995a, this.f19996b);
                } else if (i13 == b.this.f19981m) {
                    b bVar3 = b.this;
                    bVar3.F(i12, i13, 1, bVar3.f19983o, this.f19995a, this.f19996b);
                } else {
                    b.this.F(i12, i13, 1, 31, this.f19995a, this.f19996b);
                }
            } else if (i12 == b.this.f19978j) {
                b.this.f19971c.setAdapter(new n5.b(b.this.f19980l, 12));
                if (currentItem > b.this.f19971c.getAdapter().a() - 1) {
                    currentItem = b.this.f19971c.getAdapter().a() - 1;
                    b.this.f19971c.setCurrentItem(currentItem);
                }
                int i14 = currentItem + b.this.f19980l;
                if (i14 == b.this.f19980l) {
                    b bVar4 = b.this;
                    bVar4.F(i12, i14, bVar4.f19982n, 31, this.f19995a, this.f19996b);
                } else {
                    b.this.F(i12, i14, 1, 31, this.f19995a, this.f19996b);
                }
            } else if (i12 == b.this.f19979k) {
                b.this.f19971c.setAdapter(new n5.b(1, b.this.f19981m));
                if (currentItem > b.this.f19971c.getAdapter().a() - 1) {
                    currentItem = b.this.f19971c.getAdapter().a() - 1;
                    b.this.f19971c.setCurrentItem(currentItem);
                }
                int i15 = 1 + currentItem;
                if (i15 == b.this.f19981m) {
                    b bVar5 = b.this;
                    bVar5.F(i12, i15, 1, bVar5.f19983o, this.f19995a, this.f19996b);
                } else {
                    b.this.F(i12, i15, 1, 31, this.f19995a, this.f19996b);
                }
            } else {
                b.this.f19971c.setAdapter(new n5.b(1, 12));
                b bVar6 = b.this;
                bVar6.F(i12, 1 + bVar6.f19971c.getCurrentItem(), 1, 31, this.f19995a, this.f19996b);
            }
            if (b.this.f19992x != null) {
                b.this.f19992x.a();
            }
        }
    }

    class d implements n7.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f19998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f19999b;

        d(List list, List list2) {
            this.f19998a = list;
            this.f19999b = list2;
        }

        @Override // n7.b
        public void a(int i11) {
            int i12 = i11 + 1;
            if (b.this.f19978j == b.this.f19979k) {
                int i13 = (i12 + b.this.f19980l) - 1;
                if (b.this.f19980l == b.this.f19981m) {
                    b bVar = b.this;
                    bVar.F(bVar.f19984p, i13, b.this.f19982n, b.this.f19983o, this.f19998a, this.f19999b);
                } else if (b.this.f19980l == i13) {
                    b bVar2 = b.this;
                    bVar2.F(bVar2.f19984p, i13, b.this.f19982n, 31, this.f19998a, this.f19999b);
                } else if (b.this.f19981m == i13) {
                    b bVar3 = b.this;
                    bVar3.F(bVar3.f19984p, i13, 1, b.this.f19983o, this.f19998a, this.f19999b);
                } else {
                    b bVar4 = b.this;
                    bVar4.F(bVar4.f19984p, i13, 1, 31, this.f19998a, this.f19999b);
                }
            } else if (b.this.f19984p == b.this.f19978j) {
                int i14 = (i12 + b.this.f19980l) - 1;
                if (i14 == b.this.f19980l) {
                    b bVar5 = b.this;
                    bVar5.F(bVar5.f19984p, i14, b.this.f19982n, 31, this.f19998a, this.f19999b);
                } else {
                    b bVar6 = b.this;
                    bVar6.F(bVar6.f19984p, i14, 1, 31, this.f19998a, this.f19999b);
                }
            } else if (b.this.f19984p != b.this.f19979k) {
                b bVar7 = b.this;
                bVar7.F(bVar7.f19984p, i12, 1, 31, this.f19998a, this.f19999b);
            } else if (i12 == b.this.f19981m) {
                b bVar8 = b.this;
                bVar8.F(bVar8.f19984p, b.this.f19971c.getCurrentItem() + 1, 1, b.this.f19983o, this.f19998a, this.f19999b);
            } else {
                b bVar9 = b.this;
                bVar9.F(bVar9.f19984p, b.this.f19971c.getCurrentItem() + 1, 1, 31, this.f19998a, this.f19999b);
            }
            if (b.this.f19992x != null) {
                b.this.f19992x.a();
            }
        }
    }

    class e implements n7.b {
        e() {
        }

        @Override // n7.b
        public void a(int i11) {
            b.this.f19992x.a();
        }
    }

    public b(View view, boolean[] zArr, int i11, int i12) {
        this.f19969a = view;
        this.f19977i = zArr;
        this.f19976h = i11;
        this.f19985q = i12;
        N(view);
    }

    private void B(int i11, int i12, int i13, boolean z10, int i14, int i15, int i16) {
        WheelView wheelView = (WheelView) this.f19969a.findViewById(R$id.year);
        this.f19970b = wheelView;
        wheelView.setAdapter(new n5.a(r5.a.e(this.f19978j, this.f19979k)));
        this.f19970b.setLabel("");
        this.f19970b.setCurrentItem(i11 - this.f19978j);
        this.f19970b.setGravity(this.f19976h);
        WheelView wheelView2 = (WheelView) this.f19969a.findViewById(R$id.month);
        this.f19971c = wheelView2;
        wheelView2.setAdapter(new n5.a(r5.a.d(i11)));
        this.f19971c.setLabel("");
        this.f19971c.setConvertMonth(true);
        int iG = r5.a.g(i11);
        if (iG == 0 || (i12 <= iG - 1 && !z10)) {
            this.f19971c.setCurrentItem(i12);
        } else {
            this.f19971c.setCurrentItem(i12 + 1);
        }
        this.f19971c.setGravity(this.f19976h);
        this.f19972d = (WheelView) this.f19969a.findViewById(R$id.day);
        if (r5.a.g(i11) == 0) {
            this.f19972d.setAdapter(new n5.a(r5.a.b(r5.a.h(i11, i12))));
        } else {
            this.f19972d.setAdapter(new n5.a(r5.a.b(r5.a.f(i11))));
        }
        this.f19972d.setLabel("");
        this.f19972d.setCurrentItem(i13 - 1);
        this.f19972d.setGravity(this.f19976h);
        WheelView wheelView3 = (WheelView) this.f19969a.findViewById(R$id.hour);
        this.f19973e = wheelView3;
        wheelView3.setAdapter(new n5.b(0, 23));
        this.f19973e.setCurrentItem(i14);
        this.f19973e.setGravity(this.f19976h);
        WheelView wheelView4 = (WheelView) this.f19969a.findViewById(R$id.min);
        this.f19974f = wheelView4;
        wheelView4.setAdapter(new n5.b(0, 59));
        this.f19974f.setCurrentItem(i15);
        this.f19974f.setGravity(this.f19976h);
        WheelView wheelView5 = (WheelView) this.f19969a.findViewById(R$id.second);
        this.f19975g = wheelView5;
        wheelView5.setAdapter(new n5.b(0, 59));
        this.f19975g.setCurrentItem(i15);
        this.f19975g.setGravity(this.f19976h);
        this.f19970b.setOnItemSelectedListener(new a());
        this.f19971c.setOnItemSelectedListener(new C0183b());
        q(this.f19972d);
        q(this.f19973e);
        q(this.f19974f);
        q(this.f19975g);
        boolean[] zArr = this.f19977i;
        if (zArr.length != 6) {
            throw new RuntimeException("type[] length is not 6");
        }
        this.f19970b.setVisibility(zArr[0] ? 0 : 8);
        this.f19971c.setVisibility(this.f19977i[1] ? 0 : 8);
        this.f19972d.setVisibility(this.f19977i[2] ? 0 : 8);
        this.f19973e.setVisibility(this.f19977i[3] ? 0 : 8);
        this.f19974f.setVisibility(this.f19977i[4] ? 0 : 8);
        this.f19975g.setVisibility(this.f19977i[5] ? 0 : 8);
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(int i11, int i12, int i13, int i14, List list, List list2) {
        int currentItem = this.f19972d.getCurrentItem();
        if (list.contains(String.valueOf(i12))) {
            if (i14 > 31) {
                i14 = 31;
            }
            this.f19972d.setAdapter(new n5.b(i13, i14));
        } else if (list2.contains(String.valueOf(i12))) {
            if (i14 > 30) {
                i14 = 30;
            }
            this.f19972d.setAdapter(new n5.b(i13, i14));
        } else if ((i11 % 4 != 0 || i11 % 100 == 0) && i11 % 400 != 0) {
            if (i14 > 28) {
                i14 = 28;
            }
            this.f19972d.setAdapter(new n5.b(i13, i14));
        } else {
            if (i14 > 29) {
                i14 = 29;
            }
            this.f19972d.setAdapter(new n5.b(i13, i14));
        }
        if (currentItem > this.f19972d.getAdapter().a() - 1) {
            this.f19972d.setCurrentItem(this.f19972d.getAdapter().a() - 1);
        }
    }

    private void G(int i11, int i12, int i13, int i14, int i15, int i16) {
        int i17;
        int i18;
        String[] strArr = {"1", "3", "5", "7", PrepareException.ERROR_MANIFEST_INFO, "10", "12"};
        String[] strArr2 = {"4", PrepareException.ERROR_NO_URL, PrepareException.ERROR_MINI_APP_CLOSE, PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY};
        List listAsList = Arrays.asList(strArr);
        List listAsList2 = Arrays.asList(strArr2);
        this.f19984p = i11;
        WheelView wheelView = (WheelView) this.f19969a.findViewById(R$id.year);
        this.f19970b = wheelView;
        wheelView.setAdapter(new n5.b(this.f19978j, this.f19979k));
        this.f19970b.setCurrentItem(i11 - this.f19978j);
        this.f19970b.setGravity(this.f19976h);
        WheelView wheelView2 = (WheelView) this.f19969a.findViewById(R$id.month);
        this.f19971c = wheelView2;
        wheelView2.setConvertMonth(true);
        int i19 = this.f19978j;
        int i20 = this.f19979k;
        if (i19 == i20) {
            this.f19971c.setAdapter(new n5.b(this.f19980l, this.f19981m));
            this.f19971c.setCurrentItem((i12 + 1) - this.f19980l);
        } else if (i11 == i19) {
            this.f19971c.setAdapter(new n5.b(this.f19980l, 12));
            this.f19971c.setCurrentItem((i12 + 1) - this.f19980l);
        } else if (i11 == i20) {
            this.f19971c.setAdapter(new n5.b(1, this.f19981m));
            this.f19971c.setCurrentItem(i12);
        } else {
            this.f19971c.setAdapter(new n5.b(1, 12));
            this.f19971c.setCurrentItem(i12);
        }
        this.f19971c.setGravity(this.f19976h);
        this.f19972d = (WheelView) this.f19969a.findViewById(R$id.day);
        int i21 = this.f19978j;
        int i22 = this.f19979k;
        if (i21 == i22 && this.f19980l == this.f19981m) {
            int i23 = i12 + 1;
            if (listAsList.contains(String.valueOf(i23))) {
                if (this.f19983o > 31) {
                    this.f19983o = 31;
                }
                this.f19972d.setAdapter(new n5.b(this.f19982n, this.f19983o));
            } else if (listAsList2.contains(String.valueOf(i23))) {
                if (this.f19983o > 30) {
                    this.f19983o = 30;
                }
                this.f19972d.setAdapter(new n5.b(this.f19982n, this.f19983o));
            } else if ((i11 % 4 != 0 || i11 % 100 == 0) && i11 % 400 != 0) {
                if (this.f19983o > 28) {
                    this.f19983o = 28;
                }
                this.f19972d.setAdapter(new n5.b(this.f19982n, this.f19983o));
            } else {
                if (this.f19983o > 29) {
                    this.f19983o = 29;
                }
                this.f19972d.setAdapter(new n5.b(this.f19982n, this.f19983o));
            }
            this.f19972d.setCurrentItem(i13 - this.f19982n);
        } else if (i11 == i21 && (i18 = i12 + 1) == this.f19980l) {
            if (listAsList.contains(String.valueOf(i18))) {
                this.f19972d.setAdapter(new n5.b(this.f19982n, 31));
            } else if (listAsList2.contains(String.valueOf(i18))) {
                this.f19972d.setAdapter(new n5.b(this.f19982n, 30));
            } else if ((i11 % 4 != 0 || i11 % 100 == 0) && i11 % 400 != 0) {
                this.f19972d.setAdapter(new n5.b(this.f19982n, 28));
            } else {
                this.f19972d.setAdapter(new n5.b(this.f19982n, 29));
            }
            this.f19972d.setCurrentItem(i13 - this.f19982n);
        } else if (i11 == i22 && (i17 = i12 + 1) == this.f19981m) {
            if (listAsList.contains(String.valueOf(i17))) {
                if (this.f19983o > 31) {
                    this.f19983o = 31;
                }
                this.f19972d.setAdapter(new n5.b(1, this.f19983o));
            } else if (listAsList2.contains(String.valueOf(i17))) {
                if (this.f19983o > 30) {
                    this.f19983o = 30;
                }
                this.f19972d.setAdapter(new n5.b(1, this.f19983o));
            } else if ((i11 % 4 != 0 || i11 % 100 == 0) && i11 % 400 != 0) {
                if (this.f19983o > 28) {
                    this.f19983o = 28;
                }
                this.f19972d.setAdapter(new n5.b(1, this.f19983o));
            } else {
                if (this.f19983o > 29) {
                    this.f19983o = 29;
                }
                this.f19972d.setAdapter(new n5.b(1, this.f19983o));
            }
            this.f19972d.setCurrentItem(i13 - 1);
        } else {
            int i24 = i12 + 1;
            if (listAsList.contains(String.valueOf(i24))) {
                this.f19972d.setAdapter(new n5.b(1, 31));
            } else if (listAsList2.contains(String.valueOf(i24))) {
                this.f19972d.setAdapter(new n5.b(1, 30));
            } else if ((i11 % 4 != 0 || i11 % 100 == 0) && i11 % 400 != 0) {
                this.f19972d.setAdapter(new n5.b(1, 28));
            } else {
                this.f19972d.setAdapter(new n5.b(1, 29));
            }
            this.f19972d.setCurrentItem(i13 - 1);
        }
        this.f19972d.setGravity(this.f19976h);
        WheelView wheelView3 = (WheelView) this.f19969a.findViewById(R$id.hour);
        this.f19973e = wheelView3;
        wheelView3.setAdapter(new n5.b(0, 23));
        this.f19973e.setCurrentItem(i14);
        this.f19973e.setGravity(this.f19976h);
        WheelView wheelView4 = (WheelView) this.f19969a.findViewById(R$id.min);
        this.f19974f = wheelView4;
        wheelView4.setAdapter(new n5.b(0, 59));
        this.f19974f.setCurrentItem(i15);
        this.f19974f.setGravity(this.f19976h);
        WheelView wheelView5 = (WheelView) this.f19969a.findViewById(R$id.second);
        this.f19975g = wheelView5;
        wheelView5.setAdapter(new n5.b(0, 59));
        this.f19975g.setCurrentItem(i16);
        this.f19975g.setGravity(this.f19976h);
        this.f19970b.setOnItemSelectedListener(new c(listAsList, listAsList2));
        this.f19971c.setOnItemSelectedListener(new d(listAsList, listAsList2));
        q(this.f19972d);
        q(this.f19973e);
        q(this.f19974f);
        q(this.f19975g);
        boolean[] zArr = this.f19977i;
        if (zArr.length != 6) {
            throw new IllegalArgumentException("type[] length is not 6");
        }
        this.f19970b.setVisibility(zArr[0] ? 0 : 8);
        this.f19971c.setVisibility(this.f19977i[1] ? 0 : 8);
        this.f19972d.setVisibility(this.f19977i[2] ? 0 : 8);
        this.f19973e.setVisibility(this.f19977i[3] ? 0 : 8);
        this.f19974f.setVisibility(this.f19977i[4] ? 0 : 8);
        this.f19975g.setVisibility(this.f19977i[5] ? 0 : 8);
        r();
    }

    private void I() {
        this.f19972d.setTextColorCenter(this.f19987s);
        this.f19971c.setTextColorCenter(this.f19987s);
        this.f19970b.setTextColorCenter(this.f19987s);
        this.f19973e.setTextColorCenter(this.f19987s);
        this.f19974f.setTextColorCenter(this.f19987s);
        this.f19975g.setTextColorCenter(this.f19987s);
    }

    private void K() {
        this.f19972d.setTextColorOut(this.f19986r);
        this.f19971c.setTextColorOut(this.f19986r);
        this.f19970b.setTextColorOut(this.f19986r);
        this.f19973e.setTextColorOut(this.f19986r);
        this.f19974f.setTextColorOut(this.f19986r);
        this.f19975g.setTextColorOut(this.f19986r);
    }

    private String n() {
        int currentItem;
        boolean z10;
        StringBuilder sb2 = new StringBuilder();
        int currentItem2 = this.f19970b.getCurrentItem() + this.f19978j;
        if (r5.a.g(currentItem2) == 0 || (this.f19971c.getCurrentItem() + 1) - r5.a.g(currentItem2) <= 0) {
            int currentItem3 = this.f19971c.getCurrentItem();
            currentItem = currentItem3 + 1;
            z10 = false;
        } else if ((this.f19971c.getCurrentItem() + 1) - r5.a.g(currentItem2) == 1) {
            currentItem = this.f19971c.getCurrentItem();
            z10 = true;
        } else {
            currentItem = this.f19971c.getCurrentItem();
            z10 = false;
        }
        int[] iArrB = r5.b.b(currentItem2, currentItem, this.f19972d.getCurrentItem() + 1, z10);
        sb2.append(iArrB[0]);
        sb2.append("-");
        sb2.append(iArrB[1]);
        sb2.append("-");
        sb2.append(iArrB[2]);
        sb2.append(" ");
        sb2.append(this.f19973e.getCurrentItem());
        sb2.append(":");
        sb2.append(this.f19974f.getCurrentItem());
        sb2.append(":");
        sb2.append(this.f19975g.getCurrentItem());
        return sb2.toString();
    }

    private void q(WheelView wheelView) {
        if (this.f19992x != null) {
            wheelView.setOnItemSelectedListener(new e());
        }
    }

    private void r() {
        this.f19972d.setTextSize(this.f19985q);
        this.f19971c.setTextSize(this.f19985q);
        this.f19970b.setTextSize(this.f19985q);
        this.f19973e.setTextSize(this.f19985q);
        this.f19974f.setTextSize(this.f19985q);
        this.f19975g.setTextSize(this.f19985q);
    }

    private void t() {
        this.f19972d.setDividerColor(this.f19988t);
        this.f19971c.setDividerColor(this.f19988t);
        this.f19970b.setDividerColor(this.f19988t);
        this.f19973e.setDividerColor(this.f19988t);
        this.f19974f.setDividerColor(this.f19988t);
        this.f19975g.setDividerColor(this.f19988t);
    }

    private void v() {
        this.f19972d.setDividerType(this.f19990v);
        this.f19971c.setDividerType(this.f19990v);
        this.f19970b.setDividerType(this.f19990v);
        this.f19973e.setDividerType(this.f19990v);
        this.f19974f.setDividerType(this.f19990v);
        this.f19975g.setDividerType(this.f19990v);
    }

    private void z() {
        this.f19972d.setLineSpacingMultiplier(this.f19989u);
        this.f19971c.setLineSpacingMultiplier(this.f19989u);
        this.f19970b.setLineSpacingMultiplier(this.f19989u);
        this.f19973e.setLineSpacingMultiplier(this.f19989u);
        this.f19974f.setLineSpacingMultiplier(this.f19989u);
        this.f19975g.setLineSpacingMultiplier(this.f19989u);
    }

    public void A(float f11) {
        this.f19989u = f11;
        z();
    }

    public void C(boolean z10) {
        this.f19991w = z10;
    }

    public void D(int i11, int i12, int i13, int i14, int i15, int i16) {
        if (!this.f19991w) {
            G(i11, i12, i13, i14, i15, i16);
        } else {
            int[] iArrD = r5.b.d(i11, i12 + 1, i13);
            B(iArrD[0], iArrD[1] - 1, iArrD[2], iArrD[3] == 1, i14, i15, i16);
        }
    }

    public void E(Calendar calendar, Calendar calendar2) {
        if (calendar == null && calendar2 != null) {
            int i11 = calendar2.get(1);
            int i12 = calendar2.get(2) + 1;
            int i13 = calendar2.get(5);
            int i14 = this.f19978j;
            if (i11 > i14) {
                this.f19979k = i11;
                this.f19981m = i12;
                this.f19983o = i13;
                return;
            } else {
                if (i11 == i14) {
                    int i15 = this.f19980l;
                    if (i12 > i15) {
                        this.f19979k = i11;
                        this.f19981m = i12;
                        this.f19983o = i13;
                        return;
                    } else {
                        if (i12 != i15 || i13 <= this.f19982n) {
                            return;
                        }
                        this.f19979k = i11;
                        this.f19981m = i12;
                        this.f19983o = i13;
                        return;
                    }
                }
                return;
            }
        }
        if (calendar == null || calendar2 != null) {
            if (calendar == null || calendar2 == null) {
                return;
            }
            this.f19978j = calendar.get(1);
            this.f19979k = calendar2.get(1);
            this.f19980l = calendar.get(2) + 1;
            this.f19981m = calendar2.get(2) + 1;
            this.f19982n = calendar.get(5);
            this.f19983o = calendar2.get(5);
            return;
        }
        int i16 = calendar.get(1);
        int i17 = calendar.get(2) + 1;
        int i18 = calendar.get(5);
        int i19 = this.f19979k;
        if (i16 < i19) {
            this.f19980l = i17;
            this.f19982n = i18;
            this.f19978j = i16;
        } else if (i16 == i19) {
            int i20 = this.f19981m;
            if (i17 < i20) {
                this.f19980l = i17;
                this.f19982n = i18;
                this.f19978j = i16;
            } else {
                if (i17 != i20 || i18 >= this.f19983o) {
                    return;
                }
                this.f19980l = i17;
                this.f19982n = i18;
                this.f19978j = i16;
            }
        }
    }

    public void H(int i11) {
        this.f19978j = i11;
    }

    public void J(int i11) {
        this.f19987s = i11;
        I();
    }

    public void L(int i11) {
        this.f19986r = i11;
        K();
    }

    public void M(int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f19972d.setTextXOffset(i11);
        this.f19971c.setTextXOffset(i12);
        this.f19970b.setTextXOffset(i13);
        this.f19973e.setTextXOffset(i14);
        this.f19974f.setTextXOffset(i15);
        this.f19975g.setTextXOffset(i16);
    }

    public void N(View view) {
        this.f19969a = view;
    }

    public String o() {
        if (this.f19991w) {
            return n();
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f19984p == this.f19978j) {
            int currentItem = this.f19971c.getCurrentItem();
            int i11 = this.f19980l;
            if (currentItem + i11 == i11) {
                sb2.append(this.f19970b.getCurrentItem() + this.f19978j);
                sb2.append("-");
                sb2.append(this.f19971c.getCurrentItem() + this.f19980l);
                sb2.append("-");
                sb2.append(this.f19972d.getCurrentItem() + this.f19982n);
                sb2.append(" ");
                sb2.append(this.f19973e.getCurrentItem());
                sb2.append(":");
                sb2.append(this.f19974f.getCurrentItem());
                sb2.append(":");
                sb2.append(this.f19975g.getCurrentItem());
            } else {
                sb2.append(this.f19970b.getCurrentItem() + this.f19978j);
                sb2.append("-");
                sb2.append(this.f19971c.getCurrentItem() + this.f19980l);
                sb2.append("-");
                sb2.append(this.f19972d.getCurrentItem() + 1);
                sb2.append(" ");
                sb2.append(this.f19973e.getCurrentItem());
                sb2.append(":");
                sb2.append(this.f19974f.getCurrentItem());
                sb2.append(":");
                sb2.append(this.f19975g.getCurrentItem());
            }
        } else {
            sb2.append(this.f19970b.getCurrentItem() + this.f19978j);
            sb2.append("-");
            sb2.append(this.f19971c.getCurrentItem() + 1);
            sb2.append("-");
            sb2.append(this.f19972d.getCurrentItem() + 1);
            sb2.append(" ");
            sb2.append(this.f19973e.getCurrentItem());
            sb2.append(":");
            sb2.append(this.f19974f.getCurrentItem());
            sb2.append(":");
            sb2.append(this.f19975g.getCurrentItem());
        }
        return sb2.toString();
    }

    public void p(boolean z10) {
        this.f19972d.isCenterLabel(z10);
        this.f19971c.isCenterLabel(z10);
        this.f19970b.isCenterLabel(z10);
        this.f19973e.isCenterLabel(z10);
        this.f19974f.isCenterLabel(z10);
        this.f19975g.isCenterLabel(z10);
    }

    public void s(boolean z10) {
        this.f19970b.setCyclic(z10);
        this.f19971c.setCyclic(z10);
        this.f19972d.setCyclic(z10);
        this.f19973e.setCyclic(z10);
        this.f19974f.setCyclic(z10);
        this.f19975g.setCyclic(z10);
    }

    public void u(int i11) {
        this.f19988t = i11;
        t();
    }

    public void w(WheelView.DividerType dividerType) {
        this.f19990v = dividerType;
        v();
    }

    public void x(int i11) {
        this.f19979k = i11;
    }

    public void y(String str, String str2, String str3, String str4, String str5, String str6) {
        if (this.f19991w) {
            return;
        }
        if (str != null) {
            this.f19970b.setLabel(str);
        } else {
            this.f19970b.setLabel(this.f19969a.getContext().getString(R$string.pickerview_year));
        }
        if (str2 != null) {
            this.f19971c.setLabel(str2);
        } else {
            this.f19971c.setLabel(this.f19969a.getContext().getString(R$string.pickerview_month));
        }
        if (str3 != null) {
            this.f19972d.setLabel(str3);
        } else {
            this.f19972d.setLabel(this.f19969a.getContext().getString(R$string.pickerview_day));
        }
        if (str4 != null) {
            this.f19973e.setLabel(str4);
        } else {
            this.f19973e.setLabel(this.f19969a.getContext().getString(R$string.pickerview_hours));
        }
        if (str5 != null) {
            this.f19974f.setLabel(str5);
        } else {
            this.f19974f.setLabel(this.f19969a.getContext().getString(R$string.pickerview_minutes));
        }
        if (str6 != null) {
            this.f19975g.setLabel(str6);
        } else {
            this.f19975g.setLabel(this.f19969a.getContext().getString(R$string.pickerview_seconds));
        }
    }
}
