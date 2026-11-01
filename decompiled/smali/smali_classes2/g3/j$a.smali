.class final Lg3/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Ll2/v0$c;

.field public final b:Ll2/v0$a;

.field public final c:[B

.field public final d:[Ll2/v0$b;

.field public final e:I


# direct methods
.method public constructor <init>(Ll2/v0$c;Ll2/v0$a;[B[Ll2/v0$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/j$a;->a:Ll2/v0$c;

    iput-object p2, p0, Lg3/j$a;->b:Ll2/v0$a;

    iput-object p3, p0, Lg3/j$a;->c:[B

    iput-object p4, p0, Lg3/j$a;->d:[Ll2/v0$b;

    iput p5, p0, Lg3/j$a;->e:I

    return-void
.end method
