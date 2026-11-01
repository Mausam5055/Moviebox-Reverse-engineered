.class public final synthetic Lcom/google/firebase/heartbeatinfo/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/google/firebase/heartbeatinfo/f;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/datastore/preferences/core/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/c;->a:Lcom/google/firebase/heartbeatinfo/f;

    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/heartbeatinfo/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/heartbeatinfo/c;->d:Landroidx/datastore/preferences/core/c$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/c;->a:Lcom/google/firebase/heartbeatinfo/f;

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/c;->d:Landroidx/datastore/preferences/core/c$a;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/heartbeatinfo/f;->b(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/c$a;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
