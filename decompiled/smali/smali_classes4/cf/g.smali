.class public final Lcf/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcf/o0;

.field private final b:Lcf/e;


# direct methods
.method public constructor <init>(Lcf/o0;Lcf/e;)V
    .locals 1

    const-string v0, "pb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/g;->a:Lcf/o0;

    iput-object p2, p0, Lcf/g;->b:Lcf/e;

    return-void
.end method
