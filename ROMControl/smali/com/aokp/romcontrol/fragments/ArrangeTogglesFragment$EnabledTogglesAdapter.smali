.class Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ArrangeTogglesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnabledTogglesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, toggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    .line 163
    const v0, 0x1020014

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    #calls: Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->useRightSideLayout()Z
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->access$100(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f040011

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 176
    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 177
    .local v1, titleView:Landroid/widget/TextView;
    const v2, 0x1020015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    .local v0, descriptionView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;

    invoke-virtual {v2, p1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->lookupToggle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;

    invoke-virtual {v2, p1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-object p2

    .line 169
    .end local v0           #descriptionView:Landroid/widget/TextView;
    .end local v1           #titleView:Landroid/widget/TextView;
    :cond_1
    const v2, 0x7f040012

    goto :goto_0
.end method
