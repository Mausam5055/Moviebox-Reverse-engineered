package com.cloud.hisavana.sdk.common.widget.expandmenu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;

/* JADX INFO: loaded from: classes3.dex */
public class AdExpandMenuContentView extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f22236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdExpandMenuItemView f22237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdExpandMenuItemView f22238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdExpandMenuItemView f22239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f22240e;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f22241a;

        a(d dVar) {
            this.f22241a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f22241a.a(AdExpandMenuItemView.Type.PERSONALISE_CLOSE);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f22243a;

        b(d dVar) {
            this.f22243a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f22243a.a(AdExpandMenuItemView.Type.ADVERTISER_INFO);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f22245a;

        c(d dVar) {
            this.f22245a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f22245a.a(AdExpandMenuItemView.Type.COPY_LINK);
        }
    }

    public interface d {
        void a(AdExpandMenuItemView.Type type);
    }

    public AdExpandMenuContentView(@NonNull Context context) {
        this(context, null, 0);
    }

    public AdExpandMenuContentView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdExpandMenuContentView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        LayoutInflater.from(context).inflate(R$layout.ad_expand_menu_content_layout, this);
        a();
    }

    private void a() {
        this.f22236a = (TextView) findViewById(R$id.advertiser_info);
        AdExpandMenuItemView adExpandMenuItemView = (AdExpandMenuItemView) findViewById(R$id.personalise);
        this.f22237b = adExpandMenuItemView;
        adExpandMenuItemView.setData(AdExpandMenuItemView.Type.PERSONALISE_CLOSE);
        AdExpandMenuItemView adExpandMenuItemView2 = (AdExpandMenuItemView) findViewById(R$id.about);
        this.f22238c = adExpandMenuItemView2;
        adExpandMenuItemView2.setData(AdExpandMenuItemView.Type.ADVERTISER_INFO);
        AdExpandMenuItemView adExpandMenuItemView3 = (AdExpandMenuItemView) findViewById(R$id.copy_link);
        this.f22239d = adExpandMenuItemView3;
        adExpandMenuItemView3.setData(AdExpandMenuItemView.Type.COPY_LINK);
    }

    protected void setAdvertiserName(String str) {
        this.f22236a.setText(str);
    }

    public void setListener(d dVar) {
        this.f22240e = dVar;
        this.f22237b.setOnClickListener(new a(dVar));
        this.f22238c.setOnClickListener(new b(dVar));
        this.f22239d.setOnClickListener(new c(dVar));
    }
}
