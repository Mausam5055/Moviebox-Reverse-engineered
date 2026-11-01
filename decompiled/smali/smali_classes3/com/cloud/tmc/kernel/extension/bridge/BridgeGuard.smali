.class public Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/security/Guard;


# instance fields
.field private permission:Lcom/cloud/tmc/kernel/security/Permission;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/security/Permission;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;->permission:Lcom/cloud/tmc/kernel/security/Permission;

    return-void
.end method


# virtual methods
.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;->permission:Lcom/cloud/tmc/kernel/security/Permission;

    return-object v0
.end method
