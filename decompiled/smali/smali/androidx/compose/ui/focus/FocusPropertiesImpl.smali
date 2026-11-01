.class public final Landroidx/compose/ui/focus/FocusPropertiesImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/focus/k;


# instance fields
.field private a:Z

.field private b:Landroidx/compose/ui/focus/FocusRequester;

.field private c:Landroidx/compose/ui/focus/FocusRequester;

.field private d:Landroidx/compose/ui/focus/FocusRequester;

.field private e:Landroidx/compose/ui/focus/FocusRequester;

.field private f:Landroidx/compose/ui/focus/FocusRequester;

.field private g:Landroidx/compose/ui/focus/FocusRequester;

.field private h:Landroidx/compose/ui/focus/FocusRequester;

.field private i:Landroidx/compose/ui/focus/FocusRequester;

.field private j:Lkotlin/jvm/functions/Function1;

.field private k:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->b:Landroidx/compose/ui/focus/FocusRequester$a;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->b:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->c:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->d:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->e:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->f:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->g:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->h:Landroidx/compose/ui/focus/FocusRequester;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$a;->b()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->i:Landroidx/compose/ui/focus/FocusRequester;

    sget-object v0, Landroidx/compose/ui/focus/FocusPropertiesImpl$enter$1;->INSTANCE:Landroidx/compose/ui/focus/FocusPropertiesImpl$enter$1;

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->j:Lkotlin/jvm/functions/Function1;

    sget-object v0, Landroidx/compose/ui/focus/FocusPropertiesImpl$exit$1;->INSTANCE:Landroidx/compose/ui/focus/FocusPropertiesImpl$exit$1;

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public i()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->f:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public j()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->h:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public k()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->b:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public m()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->g:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public n()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->d:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public o()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->k:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public p()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->i:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public q()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->e:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    return-void
.end method

.method public s()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->j:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    return v0
.end method

.method public u()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->c:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method
