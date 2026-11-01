package com.cloud.tmc.miniapp.dialog;

import com.cloud.tmc.kernel.model.BaseBean;
import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class BottomDialog$MenuItem extends BaseBean implements Serializable {
    private boolean customStyle;
    private boolean dotBadge;
    private int icon;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final String f23542id;
    private String name;

    public BottomDialog$MenuItem(String id2, int i11, String str, boolean z10, boolean z11) {
        Intrinsics.h(id2, "id");
        this.f23542id = id2;
        this.icon = i11;
        this.name = str;
        this.dotBadge = z10;
        this.customStyle = z11;
    }

    public /* synthetic */ BottomDialog$MenuItem(String str, int i11, String str2, boolean z10, boolean z11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i11, str2, (i12 & 8) != 0 ? false : z10, (i12 & 16) != 0 ? false : z11);
    }

    public static /* synthetic */ BottomDialog$MenuItem copy$default(BottomDialog$MenuItem bottomDialog$MenuItem, String str, int i11, String str2, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = bottomDialog$MenuItem.f23542id;
        }
        if ((i12 & 2) != 0) {
            i11 = bottomDialog$MenuItem.icon;
        }
        int i13 = i11;
        if ((i12 & 4) != 0) {
            str2 = bottomDialog$MenuItem.name;
        }
        String str3 = str2;
        if ((i12 & 8) != 0) {
            z10 = bottomDialog$MenuItem.dotBadge;
        }
        boolean z12 = z10;
        if ((i12 & 16) != 0) {
            z11 = bottomDialog$MenuItem.customStyle;
        }
        return bottomDialog$MenuItem.copy(str, i13, str3, z12, z11);
    }

    public final String component1() {
        return this.f23542id;
    }

    public final int component2() {
        return this.icon;
    }

    public final String component3() {
        return this.name;
    }

    public final boolean component4() {
        return this.dotBadge;
    }

    public final boolean component5() {
        return this.customStyle;
    }

    public final BottomDialog$MenuItem copy(String id2, int i11, String str, boolean z10, boolean z11) {
        Intrinsics.h(id2, "id");
        return new BottomDialog$MenuItem(id2, i11, str, z10, z11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BottomDialog$MenuItem)) {
            return false;
        }
        BottomDialog$MenuItem bottomDialog$MenuItem = (BottomDialog$MenuItem) obj;
        return Intrinsics.c(this.f23542id, bottomDialog$MenuItem.f23542id) && this.icon == bottomDialog$MenuItem.icon && Intrinsics.c(this.name, bottomDialog$MenuItem.name) && this.dotBadge == bottomDialog$MenuItem.dotBadge && this.customStyle == bottomDialog$MenuItem.customStyle;
    }

    public final boolean getCustomStyle() {
        return this.customStyle;
    }

    public final boolean getDotBadge() {
        return this.dotBadge;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final String getId() {
        return this.f23542id;
    }

    public final String getName() {
        return this.name;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = (this.icon + (this.f23542id.hashCode() * 31)) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z10 = this.dotBadge;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = (iHashCode2 + r11) * 31;
        boolean z11 = this.customStyle;
        return i11 + (z11 ? 1 : z11);
    }

    public final void setCustomStyle(boolean z10) {
        this.customStyle = z10;
    }

    public final void setDotBadge(boolean z10) {
        this.dotBadge = z10;
    }

    public final void setIcon(int i11) {
        this.icon = i11;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "MenuItem(id=" + this.f23542id + ", icon=" + this.icon + ", name=" + this.name + ", dotBadge=" + this.dotBadge + ", customStyle=" + this.customStyle + ")";
    }
}
