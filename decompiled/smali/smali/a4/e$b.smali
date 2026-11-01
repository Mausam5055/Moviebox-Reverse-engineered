.class public final La4/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/e$b$a;,
        La4/e$b$b;
    }
.end annotation


# static fields
.field public static final f:La4/e$b$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:La4/e$a;

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/e$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/e$b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, La4/e$b;->f:La4/e$b$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;La4/e$a;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/e$b;->a:Landroid/content/Context;

    iput-object p2, p0, La4/e$b;->b:Ljava/lang/String;

    iput-object p3, p0, La4/e$b;->c:La4/e$a;

    iput-boolean p4, p0, La4/e$b;->d:Z

    iput-boolean p5, p0, La4/e$b;->e:Z

    return-void
.end method

.method public static final a(Landroid/content/Context;)La4/e$b$a;
    .locals 1

    sget-object v0, La4/e$b;->f:La4/e$b$b;

    invoke-virtual {v0, p0}, La4/e$b$b;->a(Landroid/content/Context;)La4/e$b$a;

    move-result-object p0

    return-object p0
.end method
