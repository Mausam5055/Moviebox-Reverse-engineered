.class public final Lzt/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lou/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzt/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lhj/i;->a:Lhj/i;

    const/16 v1, 0x921

    invoke-virtual {v0, p1, p2, v1}, Lhj/i;->x(Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method
