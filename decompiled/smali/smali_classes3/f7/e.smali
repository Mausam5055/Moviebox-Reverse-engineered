.class public final Lf7/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/e$a;
    }
.end annotation


# static fields
.field public static final e:Lf7/e$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:F

.field private d:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf7/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf7/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lf7/e;->e:Lf7/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFLkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/e;->a:Ljava/lang/String;

    iput p2, p0, Lf7/e;->b:I

    iput p3, p0, Lf7/e;->c:F

    iput-object p4, p0, Lf7/e;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Lf7/e;->d:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lf7/e;->b:I

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lf7/e;->c:F

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf7/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lf7/e;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method
