.class public final synthetic Lcom/google/firebase/heartbeatinfo/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/google/firebase/heartbeatinfo/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/d;->a:Lcom/google/firebase/heartbeatinfo/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/d;->a:Lcom/google/firebase/heartbeatinfo/f;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-static {v0, p1}, Lcom/google/firebase/heartbeatinfo/f;->c(Lcom/google/firebase/heartbeatinfo/f;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
