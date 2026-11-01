.class public final Ldu/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldu/b$a;
    }
.end annotation


# static fields
.field public static final b:Ldu/b$a;


# instance fields
.field private final a:Ldb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldu/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldu/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldu/b;->b:Ldu/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldu/a;

    invoke-direct {v0, p0}, Ldu/a;-><init>(Ldu/b;)V

    iput-object v0, p0, Ldu/b;->a:Ldb/a;

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
