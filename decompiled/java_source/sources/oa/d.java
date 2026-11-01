package oa;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.R$id;

/* JADX INFO: loaded from: classes5.dex */
public class d extends Property {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Property f70924a = new d("childrenAlpha");

    private d(String str) {
        super(Float.class, str);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(ViewGroup viewGroup) {
        Float f11 = (Float) viewGroup.getTag(R$id.mtrl_internal_children_alpha_tag);
        return f11 != null ? f11 : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(ViewGroup viewGroup, Float f11) {
        float fFloatValue = f11.floatValue();
        viewGroup.setTag(R$id.mtrl_internal_children_alpha_tag, f11);
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            viewGroup.getChildAt(i11).setAlpha(fFloatValue);
        }
    }
}
