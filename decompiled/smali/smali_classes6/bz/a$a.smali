.class final Lbz/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field final synthetic b:Lbz/a;


# direct methods
.method public constructor <init>(Lbz/a;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "mSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbz/a$a;->b:Lbz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbz/a$a;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a(I)C
    .locals 0

    const/16 p1, 0x2a

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lbz/a$a;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public final bridge charAt(I)C
    .locals 0

    invoke-virtual {p0, p1}, Lbz/a$a;->a(I)C

    move-result p1

    return p1
.end method

.method public final bridge length()I
    .locals 1

    invoke-virtual {p0}, Lbz/a$a;->b()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lbz/a$a;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
