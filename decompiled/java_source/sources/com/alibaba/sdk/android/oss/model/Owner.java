package com.alibaba.sdk.android.oss.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Owner implements Serializable {
    private static final long serialVersionUID = -1942759024112448066L;
    private String displayName;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f18267id;

    public Owner() {
        this(null, null);
    }

    public Owner(String str, String str2) {
        this.f18267id = str;
        this.displayName = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Owner)) {
            return false;
        }
        Owner owner = (Owner) obj;
        String id2 = owner.getId();
        String displayName = owner.getDisplayName();
        String id3 = getId();
        String displayName2 = getDisplayName();
        if (id2 == null) {
            id2 = "";
        }
        if (displayName == null) {
            displayName = "";
        }
        if (id3 == null) {
            id3 = "";
        }
        if (displayName2 == null) {
            displayName2 = "";
        }
        return id2.equals(id3) && displayName.equals(displayName2);
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getId() {
        return this.f18267id;
    }

    public int hashCode() {
        String str = this.f18267id;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setId(String str) {
        this.f18267id = str;
    }

    public String toString() {
        return "Owner [name=" + getDisplayName() + ",id=" + getId() + "]";
    }
}
