package com.amazonaws.services.s3.model;

/* JADX INFO: loaded from: classes2.dex */
public class EmailAddressGrantee implements Grantee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18698a = null;

    public EmailAddressGrantee(String str) {
        setIdentifier(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EmailAddressGrantee emailAddressGrantee = (EmailAddressGrantee) obj;
        String str = this.f18698a;
        if (str == null) {
            if (emailAddressGrantee.f18698a != null) {
                return false;
            }
        } else if (!str.equals(emailAddressGrantee.f18698a)) {
            return false;
        }
        return true;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public String getIdentifier() {
        return this.f18698a;
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public String getTypeIdentifier() {
        return "emailAddress";
    }

    public int hashCode() {
        String str = this.f18698a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    @Override // com.amazonaws.services.s3.model.Grantee
    public void setIdentifier(String str) {
        this.f18698a = str;
    }

    public String toString() {
        return this.f18698a;
    }
}
