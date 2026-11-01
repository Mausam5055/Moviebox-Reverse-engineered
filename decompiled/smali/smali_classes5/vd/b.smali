.class public final Lvd/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lid/b;

.field private final b:Ljava/util/List;

.field private final c:I


# direct methods
.method public constructor <init>(Lid/b;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd/b;->a:Lid/b;

    iput-object p2, p0, Lvd/b;->b:Ljava/util/List;

    iput p3, p0, Lvd/b;->c:I

    return-void
.end method


# virtual methods
.method public a()Lid/b;
    .locals 1

    iget-object v0, p0, Lvd/b;->a:Lid/b;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lvd/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lvd/b;->c:I

    return v0
.end method
