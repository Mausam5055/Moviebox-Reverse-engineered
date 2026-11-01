.class final Landroidx/fragment/app/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/fragment/app/Fragment;

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroidx/lifecycle/Lifecycle$State;

.field i:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/w$a;->a:I

    iput-object p2, p0, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/w$a;->c:Z

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/fragment/app/w$a;->i:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/w$a;->a:I

    iput-object p2, p0, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/w$a;->c:Z

    iget-object p1, p2, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/Lifecycle$State;

    iput-object p3, p0, Landroidx/fragment/app/w$a;->i:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/w$a;->a:I

    iput-object p2, p0, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/w$a;->c:Z

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/fragment/app/w$a;->i:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/w$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/fragment/app/w$a;->a:I

    iput v0, p0, Landroidx/fragment/app/w$a;->a:I

    iget-object v0, p1, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v0, p1, Landroidx/fragment/app/w$a;->c:Z

    iput-boolean v0, p0, Landroidx/fragment/app/w$a;->c:Z

    iget v0, p1, Landroidx/fragment/app/w$a;->d:I

    iput v0, p0, Landroidx/fragment/app/w$a;->d:I

    iget v0, p1, Landroidx/fragment/app/w$a;->e:I

    iput v0, p0, Landroidx/fragment/app/w$a;->e:I

    iget v0, p1, Landroidx/fragment/app/w$a;->f:I

    iput v0, p0, Landroidx/fragment/app/w$a;->f:I

    iget v0, p1, Landroidx/fragment/app/w$a;->g:I

    iput v0, p0, Landroidx/fragment/app/w$a;->g:I

    iget-object v0, p1, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/fragment/app/w$a;->h:Landroidx/lifecycle/Lifecycle$State;

    iget-object p1, p1, Landroidx/fragment/app/w$a;->i:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/fragment/app/w$a;->i:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method
