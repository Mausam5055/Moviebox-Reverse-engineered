.class public final Lip/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lip/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lip/b$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lip/b$b;Landroid/view/View;)Lip/b;
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lip/b;

    iget-object v1, p0, Lip/b$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lip/b;-><init>(Landroid/content/Context;Lip/b$b;Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
