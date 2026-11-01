.class final Landroidx/activity/result/ActivityResultRegistry$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResultRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/activity/result/a;

.field private final b:Lf/a;


# direct methods
.method public constructor <init>(Landroidx/activity/result/a;Lf/a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$a;->a:Landroidx/activity/result/a;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$a;->b:Lf/a;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/activity/result/a;
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$a;->a:Landroidx/activity/result/a;

    return-object v0
.end method

.method public final b()Lf/a;
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$a;->b:Lf/a;

    return-object v0
.end method
