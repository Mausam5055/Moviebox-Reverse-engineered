.class public final synthetic Lcom/google/firebase/heartbeatinfo/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/heartbeatinfo/b;->a:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/heartbeatinfo/b;->a:J

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/heartbeatinfo/f;->a(JLandroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
