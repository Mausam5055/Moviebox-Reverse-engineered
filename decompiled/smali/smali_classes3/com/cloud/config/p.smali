.class public final synthetic Lcom/cloud/config/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/p;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/p;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    invoke-static {v0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->c(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    return-void
.end method
