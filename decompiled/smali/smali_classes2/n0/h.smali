.class public final Ln0/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/h$a;
    }
.end annotation


# static fields
.field public static final b:Ln0/h$a;


# instance fields
.field private final a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln0/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln0/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ln0/h;->b:Ln0/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ln0/k;->a()Ln0/j;

    move-result-object v0

    invoke-interface {v0, p1}, Ln0/j;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Ln0/h;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/h;->a:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ln0/h;->a:Ljava/util/Locale;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/h;->a:Ljava/util/Locale;

    invoke-static {v0}, Ln0/l;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln0/h;

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p0}, Ln0/h;->b()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ln0/h;

    invoke-virtual {p1}, Ln0/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ln0/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ln0/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
