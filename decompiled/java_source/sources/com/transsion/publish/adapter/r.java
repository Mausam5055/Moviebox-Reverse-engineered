package com.transsion.publish.adapter;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$layout;
import com.transsion.publish.api.AudioEntity;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.api.LinkEntity;
import com.transsion.publish.ui.SelectLocationActivity;
import com.transsion.room.api.bean.LocationPlace;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public final class r extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f50424a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private mp.d f50425b;

    /* JADX WARN: Type inference failed for: r10v1, types: [T, com.transsion.publish.api.LinkEntity] */
    private final void C(RecyclerView.b0 b0Var, int i11, in.a aVar) {
        Intrinsics.f(b0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectLinksHolder");
        y yVar = (y) b0Var;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.publish.api.LinkEntity");
        ?? r11 = (LinkEntity) aVar;
        objectRef.element = r11;
        String url = r11.getUrl();
        String strS = url != null ? StringsKt.S(url, "https://www.", "", false, 4, null) : null;
        String strS2 = strS != null ? StringsKt.S(strS, "http://www.", "", false, 4, null) : null;
        String strS3 = strS2 != null ? StringsKt.S(strS2, "www.", "", false, 4, null) : null;
        String strS4 = strS3 != null ? StringsKt.S(strS3, "https://", "", false, 4, null) : null;
        yVar.g().setText(strS4 != null ? StringsKt.S(strS4, "http://", "", false, 4, null) : null);
        yVar.f().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.D(this.f50412a, objectRef, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(r rVar, Ref.ObjectRef objectRef, View view) {
        rVar.f50424a.remove(objectRef.element);
        rVar.notifyDataSetChanged();
        List list = rVar.f50424a;
        if (list == null || list.isEmpty()) {
            fp.a aVar = new fp.a();
            aVar.o(4);
            aVar.n(2);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = fp.a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, com.transsion.publish.adapter.z] */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, com.transsion.room.api.bean.LocationPlace] */
    private final void E(RecyclerView.b0 b0Var, int i11, in.a aVar) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(b0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectLocationHolder");
        objectRef.element = (z) b0Var;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.room.api.bean.LocationPlace");
        objectRef2.element = (LocationPlace) aVar;
        ((z) objectRef.element).g().setText(((LocationPlace) objectRef2.element).getName() + " " + ((LocationPlace) objectRef2.element).getDistance());
        ((z) objectRef.element).itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.F(this.f50418a, objectRef, view);
            }
        });
        ((z) objectRef.element).f().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.G(objectRef2, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void F(r rVar, Ref.ObjectRef objectRef, View view) {
        Context context = ((z) objectRef.element).itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        rVar.L(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void G(Ref.ObjectRef objectRef, View view) {
        fp.a aVar = new fp.a();
        aVar.o(8);
        aVar.n(2);
        aVar.q((LocationPlace) objectRef.element);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    private final void K(Context context) {
        Navigator.x(TheRouter.c("/room/list").z("is_select_room", true).F("index", 1), context, null, 2, null);
    }

    private final void L(Context context) {
        if (ye.c.f78993a.f(context, "android.permission.ACCESS_FINE_LOCATION")) {
            Intent intent = new Intent(context, (Class<?>) SelectLocationActivity.class);
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }
    }

    private final void M(Context context) {
        yj.b bVar = (yj.b) yj.a.f79022a.a(yj.b.class);
        if (bVar != null) {
            bVar.e(context);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, com.transsion.publish.adapter.n0] */
    /* JADX WARN: Type inference failed for: r8v1, types: [T, com.transsion.moviedetailapi.bean.Subject, in.a] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void N(RecyclerView.b0 b0Var, int i11, in.a aVar) {
        String url;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(b0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectWorkHolder");
        objectRef.element = (n0) b0Var;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject");
        ?? r11 = (Subject) aVar;
        objectRef2.element = r11;
        ShapeableImageView shapeableImageViewF = ((n0) objectRef.element).f();
        int iA = com.blankj.utilcode.util.a0.a(42.0f);
        ej.f.a aVar2 = ej.f.f61882a;
        Context context = shapeableImageViewF.getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarM = aVar2.m(context);
        Cover cover = r11.getCover();
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        bVarM.g(url).i(R$mipmap.home_ic_default_res).m(iA).c(iA).d(shapeableImageViewF);
        ((n0) objectRef.element).i().setText(r11.getTitle());
        try {
            Result.Companion companion = Result.INSTANCE;
            AppCompatTextView appCompatTextViewH = ((n0) objectRef.element).h();
            jn.e eVar = jn.e.f66245a;
            CharSequence charSequenceE = eVar.e(r11);
            if (charSequenceE.length() == 0) {
                charSequenceE = eVar.g(Integer.valueOf(r11.getType()));
            }
            appCompatTextViewH.setText(charSequenceE);
            appCompatTextViewH.setCompoundDrawablesWithIntrinsicBounds(com.transsion.moviedetailapi.g.a(r11.getSubjectType()), 0, 0, 0);
            Result.m454constructorimpl(appCompatTextViewH);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (((Subject) objectRef2.element).getCorrelation()) {
            ((n0) objectRef.element).g().setVisibility(4);
        } else {
            ((n0) objectRef.element).g().setVisibility(0);
            ((n0) objectRef.element).g().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    r.O(this.f50386a, objectRef2, view);
                }
            });
        }
        ((n0) objectRef.element).itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.P(this.f50390a, objectRef, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(r rVar, Ref.ObjectRef objectRef, View view) {
        rVar.f50424a.remove(objectRef.element);
        rVar.notifyDataSetChanged();
        if (rVar.f50424a.isEmpty()) {
            fp.a aVar = new fp.a();
            aVar.o(3);
            aVar.n(2);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = fp.a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void P(r rVar, Ref.ObjectRef objectRef, View view) {
        Context context = ((n0) objectRef.element).itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        rVar.M(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, com.transsion.publish.adapter.b] */
    /* JADX WARN: Type inference failed for: r7v1, types: [T, com.transsion.publish.api.AudioEntity] */
    private final void q(RecyclerView.b0 b0Var, int i11, in.a aVar) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(b0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectAudioHolder");
        objectRef.element = (b) b0Var;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.publish.api.AudioEntity");
        objectRef2.element = (AudioEntity) aVar;
        ((b) objectRef.element).i().setText(((AudioEntity) objectRef2.element).getImageTitle());
        TextView textViewH = ((b) objectRef.element).h();
        Long duration = ((AudioEntity) objectRef2.element).getDuration();
        textViewH.setText(duration != null ? TimeUtilKt.o(duration.longValue() / ((long) 1000)) : null);
        mp.d dVar = this.f50425b;
        if (dVar == null || !dVar.b()) {
            ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_play);
        } else {
            ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_pause);
        }
        ((b) objectRef.element).itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.r(this.f50374a, objectRef, objectRef2, view);
            }
        });
        ((b) objectRef.element).g().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.t(objectRef2, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void r(r rVar, final Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, View view) {
        mp.d dVar;
        try {
            if (rVar.f50425b == null) {
                rVar.f50425b = new mp.d();
            }
            mp.d dVar2 = rVar.f50425b;
            if (dVar2 != null && dVar2.b()) {
                ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_pause);
                mp.d dVar3 = rVar.f50425b;
                if (dVar3 != null) {
                    dVar3.c();
                    return;
                }
                return;
            }
            ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_play);
            String localPath = ((AudioEntity) objectRef2.element).getLocalPath();
            if (localPath != null && (dVar = rVar.f50425b) != null) {
                Context context = ((b) objectRef.element).itemView.getContext();
                Intrinsics.g(context, "getContext(...)");
                dVar.d(context, localPath, false, new MediaPlayer.OnCompletionListener() { // from class: com.transsion.publish.adapter.q
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer) {
                        r.s(objectRef, mediaPlayer);
                    }
                });
            }
            ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_pause);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void s(Ref.ObjectRef objectRef, MediaPlayer mediaPlayer) {
        ((b) objectRef.element).f().setImageResource(R$drawable.ic_audio_play);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void t(Ref.ObjectRef objectRef, View view) {
        fp.a aVar = new fp.a();
        aVar.o(2);
        aVar.n(2);
        aVar.k((AudioEntity) objectRef.element);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, com.transsion.publish.adapter.w] */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, com.transsion.publish.api.GroupBean] */
    private final void x(RecyclerView.b0 b0Var, int i11, in.a aVar) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Intrinsics.f(b0Var, "null cannot be cast to non-null type com.transsion.publish.adapter.SelectGroupHolder");
        objectRef.element = (w) b0Var;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.publish.api.GroupBean");
        objectRef2.element = (GroupBean) aVar;
        ((w) objectRef.element).g().setText(((GroupBean) objectRef2.element).getName());
        ((w) objectRef.element).itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.y(this.f50400a, objectRef, view);
            }
        });
        ((w) objectRef.element).f().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.publish.adapter.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.z(objectRef2, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void y(r rVar, Ref.ObjectRef objectRef, View view) {
        Context context = ((w) objectRef.element).itemView.getContext();
        Intrinsics.g(context, "getContext(...)");
        rVar.K(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void z(Ref.ObjectRef objectRef, View view) {
        fp.a aVar = new fp.a();
        aVar.o(6);
        aVar.n(2);
        aVar.m((GroupBean) objectRef.element);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    public final boolean A() {
        List list = this.f50424a;
        return list == null || list.isEmpty();
    }

    public final boolean B() {
        List list = this.f50424a;
        if (list == null || list.isEmpty()) {
            return false;
        }
        List list2 = this.f50424a;
        if (list2 == null || list2.size() != 1 || ((in.a) this.f50424a.get(0)).getType() == 3) {
            return this.f50424a.size() == 1 && ((in.a) this.f50424a.get(0)).getType() == 3;
        }
        return true;
    }

    public final void H() {
        Iterator it = this.f50424a.iterator();
        while (it.hasNext()) {
            if (((in.a) it.next()).getType() == 2) {
                mp.d dVar = this.f50425b;
                if (dVar != null) {
                    dVar.c();
                }
                notifyDataSetChanged();
            }
        }
    }

    public final void I(in.a entity) {
        Intrinsics.h(entity, "entity");
        this.f50424a.remove(entity);
        notifyDataSetChanged();
    }

    public final void J(in.a aVar) {
        int i11;
        if (aVar == null) {
            return;
        }
        int type = aVar.getType();
        int i12 = 0;
        if (type == 2) {
            i11 = -1;
            for (Object obj : this.f50424a) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                if (((in.a) obj) instanceof AudioEntity) {
                    i11 = i12;
                }
                i12 = i13;
            }
            mp.d dVar = this.f50425b;
            if (dVar != null) {
                dVar.f();
            }
            this.f50425b = null;
        } else if (type == 3) {
            i11 = -1;
            for (Object obj2 : this.f50424a) {
                int i14 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                if (((in.a) obj2) instanceof Subject) {
                    i11 = i12;
                }
                i12 = i14;
            }
        } else if (type == 4) {
            i11 = -1;
            for (Object obj3 : this.f50424a) {
                int i15 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                if (((in.a) obj3) instanceof LinkEntity) {
                    i11 = i12;
                }
                i12 = i15;
            }
        } else if (type == 6) {
            i11 = -1;
            for (Object obj4 : this.f50424a) {
                int i16 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                if (((in.a) obj4) instanceof GroupBean) {
                    i11 = i12;
                }
                i12 = i16;
            }
        } else if (type != 8) {
            i11 = -1;
        } else {
            i11 = -1;
            for (Object obj5 : this.f50424a) {
                int i17 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                if (((in.a) obj5) instanceof LocationPlace) {
                    i11 = i12;
                }
                i12 = i17;
            }
        }
        if (i11 == -1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(aVar);
            addData(arrayList);
        } else {
            this.f50424a.set(i11, aVar);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(this.f50424a);
            setData(arrayList2);
        }
    }

    public final void addData(List data) {
        Intrinsics.h(data, "data");
        int size = this.f50424a.size();
        this.f50424a.addAll(data);
        notifyItemRangeInserted(size, data.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f50424a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i11) {
        int type = ((in.a) this.f50424a.get(i11)).getType();
        int i12 = 2;
        if (type != 2) {
            i12 = 3;
            if (type != 3) {
                i12 = 4;
                if (type != 4) {
                    i12 = 6;
                    if (type != 6) {
                        i12 = 8;
                        if (type != 8) {
                            return 0;
                        }
                    }
                }
            }
        }
        return i12;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.b0 holder, int i11) {
        Intrinsics.h(holder, "holder");
        in.a aVar = (in.a) this.f50424a.get(i11);
        int type = aVar.getType();
        if (type == 2) {
            q(holder, i11, aVar);
            return;
        }
        if (type == 3) {
            N(holder, i11, aVar);
            return;
        }
        if (type == 4) {
            C(holder, i11, aVar);
        } else if (type == 6) {
            x(holder, i11, aVar);
        } else {
            if (type != 8) {
                return;
            }
            E(holder, i11, aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.b0 onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        if (i11 == 2) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_music, parent, false);
            Intrinsics.e(viewInflate);
            return new b(viewInflate);
        }
        if (i11 == 3) {
            View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_work, parent, false);
            Intrinsics.e(viewInflate2);
            return new n0(viewInflate2);
        }
        if (i11 == 4) {
            View viewInflate3 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_link, parent, false);
            Intrinsics.e(viewInflate3);
            return new y(viewInflate3);
        }
        if (i11 == 6) {
            View viewInflate4 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_group, parent, false);
            Intrinsics.e(viewInflate4);
            return new w(viewInflate4);
        }
        if (i11 != 8) {
            return new c(null);
        }
        View viewInflate5 = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_publish_location, parent, false);
        Intrinsics.e(viewInflate5);
        return new z(viewInflate5);
    }

    public final void setData(List data) {
        Intrinsics.h(data, "data");
        this.f50424a.clear();
        this.f50424a.addAll(data);
        notifyDataSetChanged();
    }

    public final void u() {
        mp.d dVar = this.f50425b;
        if (dVar != null) {
            dVar.f();
        }
    }

    public final List v() {
        return this.f50424a;
    }

    public final String w() {
        String strValueOf = "";
        for (in.a aVar : this.f50424a) {
            if (aVar.getType() == 3) {
                Intrinsics.f(aVar, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject");
                strValueOf = String.valueOf(((Subject) aVar).getSubjectId());
            }
        }
        return strValueOf;
    }
}
