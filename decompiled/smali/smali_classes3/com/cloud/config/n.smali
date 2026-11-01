.class public final synthetic Lcom/cloud/config/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

.field public final synthetic b:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/n;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    iput-object p2, p0, Lcom/cloud/config/n;->b:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/config/n;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    iget-object v1, p0, Lcom/cloud/config/n;->b:Lcom/google/gson/JsonObject;

    invoke-static {v0, v1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->d(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V

    return-void
.end method
