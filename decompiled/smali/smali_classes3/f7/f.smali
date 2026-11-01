.class public final Lf7/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/f$a;
    }
.end annotation


# static fields
.field public static final d:Lf7/f$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf7/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf7/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lf7/f;->d:Lf7/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/f;->a:Ljava/lang/String;

    iput p2, p0, Lf7/f;->b:I

    iput p3, p0, Lf7/f;->c:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lf7/f;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lf7/f;->c:F

    return v0
.end method
