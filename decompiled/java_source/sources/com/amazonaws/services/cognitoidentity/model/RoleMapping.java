package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class RoleMapping implements Serializable {
    private String ambiguousRoleResolution;
    private RulesConfigurationType rulesConfiguration;
    private String type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RoleMapping)) {
            return false;
        }
        RoleMapping roleMapping = (RoleMapping) obj;
        if ((roleMapping.getType() == null) ^ (getType() == null)) {
            return false;
        }
        if (roleMapping.getType() != null && !roleMapping.getType().equals(getType())) {
            return false;
        }
        if ((roleMapping.getAmbiguousRoleResolution() == null) ^ (getAmbiguousRoleResolution() == null)) {
            return false;
        }
        if (roleMapping.getAmbiguousRoleResolution() != null && !roleMapping.getAmbiguousRoleResolution().equals(getAmbiguousRoleResolution())) {
            return false;
        }
        if ((roleMapping.getRulesConfiguration() == null) ^ (getRulesConfiguration() == null)) {
            return false;
        }
        return roleMapping.getRulesConfiguration() == null || roleMapping.getRulesConfiguration().equals(getRulesConfiguration());
    }

    public String getAmbiguousRoleResolution() {
        return this.ambiguousRoleResolution;
    }

    public RulesConfigurationType getRulesConfiguration() {
        return this.rulesConfiguration;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((getType() == null ? 0 : getType().hashCode()) + 31) * 31) + (getAmbiguousRoleResolution() == null ? 0 : getAmbiguousRoleResolution().hashCode())) * 31) + (getRulesConfiguration() != null ? getRulesConfiguration().hashCode() : 0);
    }

    public void setAmbiguousRoleResolution(AmbiguousRoleResolutionType ambiguousRoleResolutionType) {
        this.ambiguousRoleResolution = ambiguousRoleResolutionType.toString();
    }

    public void setAmbiguousRoleResolution(String str) {
        this.ambiguousRoleResolution = str;
    }

    public void setRulesConfiguration(RulesConfigurationType rulesConfigurationType) {
        this.rulesConfiguration = rulesConfigurationType;
    }

    public void setType(RoleMappingType roleMappingType) {
        this.type = roleMappingType.toString();
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (getType() != null) {
            sb2.append("Type: " + getType() + ",");
        }
        if (getAmbiguousRoleResolution() != null) {
            sb2.append("AmbiguousRoleResolution: " + getAmbiguousRoleResolution() + ",");
        }
        if (getRulesConfiguration() != null) {
            sb2.append("RulesConfiguration: " + getRulesConfiguration());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public RoleMapping withAmbiguousRoleResolution(AmbiguousRoleResolutionType ambiguousRoleResolutionType) {
        this.ambiguousRoleResolution = ambiguousRoleResolutionType.toString();
        return this;
    }

    public RoleMapping withAmbiguousRoleResolution(String str) {
        this.ambiguousRoleResolution = str;
        return this;
    }

    public RoleMapping withRulesConfiguration(RulesConfigurationType rulesConfigurationType) {
        this.rulesConfiguration = rulesConfigurationType;
        return this;
    }

    public RoleMapping withType(RoleMappingType roleMappingType) {
        this.type = roleMappingType.toString();
        return this;
    }

    public RoleMapping withType(String str) {
        this.type = str;
        return this;
    }
}
