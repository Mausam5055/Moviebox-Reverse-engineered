.class public final synthetic Lcom/google/firebase/heartbeatinfo/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/google/firebase/heartbeatinfo/f;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/e;->a:Lcom/google/firebase/heartbeatinfo/f;

    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/e;->a:Lcom/google/firebase/heartbeatinfo/f;

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/e;->b:Ljava/lang/String;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/heartbeatinfo/f;->d(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
