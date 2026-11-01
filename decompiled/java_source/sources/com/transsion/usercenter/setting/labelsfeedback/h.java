package com.transsion.usercenter.setting.labelsfeedback;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.usercenter.setting.labelsfeedback.model.FBContact;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import com.transsnet.loginapi.bean.Country;
import fw.g0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class h extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FbDataModel f57436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f57437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f57438c;

    public final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final LinearLayout f57439a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final UCEditText f57440b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final AppCompatTextView f57441c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ShapeableImageView f57442d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final AppCompatEditText f57443e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final AppCompatEditText f57444f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ h f57445g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(h hVar, g0 binding) {
            super(binding.getRoot());
            Intrinsics.h(binding, "binding");
            this.f57445g = hVar;
            LinearLayout root = binding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            this.f57439a = root;
            UCEditText editText = binding.f62665d;
            Intrinsics.g(editText, "editText");
            this.f57440b = editText;
            AppCompatTextView countTextView = binding.f62663b;
            Intrinsics.g(countTextView, "countTextView");
            this.f57441c = countTextView;
            ShapeableImageView imageView = binding.f62666e;
            Intrinsics.g(imageView, "imageView");
            this.f57442d = imageView;
            AppCompatEditText countryEditText = binding.f62664c;
            Intrinsics.g(countryEditText, "countryEditText");
            this.f57443e = countryEditText;
            AppCompatEditText phoneEditText = binding.f62667f;
            Intrinsics.g(phoneEditText, "phoneEditText");
            this.f57444f = phoneEditText;
        }

        public final AppCompatTextView f() {
            return this.f57441c;
        }

        public final AppCompatEditText g() {
            return this.f57443e;
        }

        public final UCEditText h() {
            return this.f57440b;
        }

        public final ShapeableImageView i() {
            return this.f57442d;
        }

        public final AppCompatEditText j() {
            return this.f57444f;
        }

        public final LinearLayout k() {
            return this.f57439a;
        }
    }

    public static final class b implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ a f57446a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f57447b;

        public b(a aVar, h hVar) {
            this.f57446a = aVar;
            this.f57447b = hVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String string;
            int length = editable != null ? editable.length() : 0;
            this.f57446a.f().setText(length + "/500");
            this.f57447b.m().setContent((editable == null || (string = editable.toString()) == null) ? null : StringsKt.n1(string).toString());
            i iVarL = this.f57447b.l();
            if (iVarL != null) {
                iVarL.b(this.f57447b);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class c implements TextWatcher {
        public c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String string;
            FBContact contact = h.this.m().getContact();
            if (editable == null || (string = editable.toString()) == null) {
                string = "";
            }
            contact.setPhone(string);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public h(FbDataModel model, i iVar) {
        Intrinsics.h(model, "model");
        this.f57436a = model;
        this.f57437b = iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(h hVar, View view) {
        i iVar = hVar.f57437b;
        if (iVar != null) {
            iVar.e(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(h hVar, View view) {
        i iVar = hVar.f57437b;
        if (iVar != null) {
            iVar.a(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(h hVar, View view) {
        i iVar = hVar.f57437b;
        if (iVar != null) {
            iVar.k(hVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    public final void j(Country country) {
        AppCompatEditText appCompatEditTextG;
        if (country != null) {
            this.f57436a.getContact().setCountry(country);
            String str = country.getCountry_s() + " +" + country.getCode();
            a aVar = this.f57438c;
            if (aVar == null || (appCompatEditTextG = aVar.g()) == null) {
                return;
            }
            appCompatEditTextG.setText(str);
        }
    }

    public final void k(String str) {
        ShapeableImageView shapeableImageViewI;
        i iVar;
        this.f57436a.setImagePath(str);
        a aVar = this.f57438c;
        if (aVar == null || (shapeableImageViewI = aVar.i()) == null || (iVar = this.f57437b) == null) {
            return;
        }
        iVar.c(this, shapeableImageViewI);
    }

    public final i l() {
        return this.f57437b;
    }

    public final FbDataModel m() {
        return this.f57436a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a holder, int i11) {
        Intrinsics.h(holder, "holder");
        holder.k().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.setting.labelsfeedback.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h.o(this.f57433a, view);
            }
        });
        holder.i().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.setting.labelsfeedback.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h.p(this.f57434a, view);
            }
        });
        holder.f().setText("0/500");
        holder.h().addTextChangedListener(new b(holder, this));
        holder.g().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.setting.labelsfeedback.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h.q(this.f57435a, view);
            }
        });
        holder.j().addTextChangedListener(new c());
        String content = this.f57436a.getContent();
        if (content != null) {
            holder.h().setText(new SpannableStringBuilder(content));
        }
        k(this.f57436a.getImagePath());
        j(this.f57436a.getContact().getCountry());
        holder.j().setText(new SpannableStringBuilder(this.f57436a.getContact().getPhone()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        g0 g0VarC = g0.c(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.g(g0VarC, "inflate(...)");
        a aVar = new a(this, g0VarC);
        this.f57438c = aVar;
        return aVar;
    }
}
