//
//  CILeftViewController.m
//  BDE Com'In
//
//  Created by chrism on 13/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CILeftViewController.h"
#import "CICellViewLeft.h"
#import "CIViewControllerNews.h"
#import "CIViewControllerEvent.h"
#import "CIViewControllerEvenement.h"
#import "CIAlbum.h"
#import "CIViewControllerPartenaires.h"
#import "CIViewController.h"
#import "IIViewDeckController.h"

@interface CILeftViewController ()

@end

@implementation CILeftViewController

@synthesize menu;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.tableView.backgroundColor = [UIColor blackColor];
    //image background du separator tableview
     //self.tableView.separatorColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"separatorCellule.png"]];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //category menu
    NSDictionary *category = [[NSDictionary alloc] initWithObjectsAndKeys:@"Actualité",@"cat",@"news.png",@"img",nil];
    NSDictionary *category1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Évènements",@"cat",@"event.png",@"img",nil];
    NSDictionary *category2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Photos",@"cat",@"photos.png",@"img",nil];
    NSDictionary *category3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Partenaires",@"cat",@"partners.png",@"img",nil];
    NSDictionary *category4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Accueil",@"cat",@"home.png",@"img",nil];
    
    //array menu complet
    menu = [[NSArray alloc] initWithObjects:category4,category,category1,category2,category3,nil];
    
    //UIEdgeInsets inset = UIEdgeInsetsMake(70, 0, 0, 0);
    //self.tableView.contentInset = inset; 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// return la hauteur de la cellule custom
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [menu count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CICellViewLeft";
    //on utilise notre cellules personaliser
    CICellViewLeft *cell = (CICellViewLeft *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        //chargement de la cellule custom
        NSArray *ixb = [[NSBundle mainBundle] loadNibNamed:@"CICellViewLeft" owner:self options:nil];
        
        //parcourir les objets du xib
        for(id oneObject in ixb){
            
            if ([oneObject isKindOfClass:[CICellViewLeft class]]) {
                cell = (CICellViewLeft *)oneObject;
            }
        }
    }
    
    NSDictionary *current = [menu objectAtIndex:indexPath.row];
    
    [cell.imageView setFrame:CGRectMake(20, 0, 0, 0)];
    
    [cell.titleCat setText:[current objectForKey:@"cat"]];
    [cell.imgCat setImage:[UIImage imageNamed:[current objectForKey:@"img"]]];
    [cell.titleCat setTextColor:[UIColor blackColor]]; 
    [cell.imgCat setFrame:CGRectMake(20, 15, 30, 30)]; 
    [cell.titleCat setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20.0f]];
    
    
    UIView *theView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 4, 70)];
    
    switch (indexPath.row) {
        case 0:
            [theView setBackgroundColor:[UIColor colorWithRed:(52/255.0) green:(152/255.0) blue:(219/255.0) alpha:1]];
            [cell.contentView addSubview:theView];
            break;
        case 1:
            [theView setBackgroundColor:[UIColor colorWithRed:(155/255.0) green:(89/255.0) blue:(182/255.0) alpha:1]];
            [cell.contentView addSubview:theView];
            break;
        case 2:
            [theView setBackgroundColor:[UIColor colorWithRed:(231/255.0) green:(76/255.0) blue:(60/255.0) alpha:1]];
            [cell.contentView addSubview:theView];
            break;
        case 3:
            [theView setBackgroundColor:[UIColor colorWithRed:(46/255.0) green:(204/255.0) blue:(113/255.0) alpha:1]];
            [cell.contentView addSubview:theView];
            break;
        case 4:
            [theView setBackgroundColor:[UIColor colorWithRed:(230/255.0) green:(126/255.0) blue:(34/255.0) alpha:1]];
            [cell.contentView addSubview:theView];
            break;
            
        default:
            break;
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    
    switch (indexPath.row) {
        case 0:
            self.viewDeckController.centerController = [[CIViewController alloc] initWithNibName:@"CIViewController" bundle:nil];
                self.viewDeckController.closeSlideAnimationDuration = 0.25f;
            [self.viewDeckController closeOpenView];
            break;
        case 1:
            self.viewDeckController.centerController = [[CIViewControllerNews alloc] initWithNibName:@"CIViewControllerNews" bundle:nil];
            
            self.viewDeckController.closeSlideAnimationDuration = 0.25f;
            [self.viewDeckController closeOpenView];
            
            break;
        case 2:
            self.viewDeckController.centerController = [[CIViewControllerEvenement alloc] initWithNibName:@"CIViewControllerEvenement" bundle:nil];
            
            self.viewDeckController.closeSlideAnimationDuration = 0.25f;
            [self.viewDeckController closeOpenView];
            
            break;
        case 3:
            //self.viewDeckController.centerController = [[CITableView alloc] initWithNibName:@"CITableView" bundle:nil];
            self.viewDeckController.centerController = [[CIAlbum alloc] initWithNibName:@"CIAlbum" bundle:nil];
            
            self.viewDeckController.closeSlideAnimationDuration = 0.25f;
            [self.viewDeckController closeOpenView];
            
            break;
        case 4:
            self.viewDeckController.centerController = [[CIViewControllerPartenaires alloc] initWithNibName:@"CIViewControllerPartenaires" bundle:nil];
            
            self.viewDeckController.closeSlideAnimationDuration = 0.25f;
            [self.viewDeckController closeOpenView];
            
            break;
            
        default:
            break;
    }
}

- (void)viewDidUnload {
    [self setCellViewDeck:nil];
    [super viewDidUnload];
}
@end
