//
//  RootViewController.m
//  Developer
//
//  Created by Talha Syed on 26/01/09.
//  Copyright RyeHigh 2009. All rights reserved.
//

#import "RootViewController.h"

#import "AboutPageViewController.h"
#import "DeveloperAppDelegate.h"
#import "Developer.h"


@implementation RootViewController
@synthesize developerView;
// @synthesize modalView;

-(void)awakeFromNib
{
	modalViewController = [[AboutPageViewController alloc] initWithNibName:@"About" bundle:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	DeveloperAppDelegate *appDelegate = (DeveloperAppDelegate *)[[UIApplication sharedApplication] delegate];
	return appDelegate.developers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *MyIdentifier = @"MyIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:MyIdentifier] autorelease];
    }
	
	DeveloperAppDelegate *appDelegate = (DeveloperAppDelegate *) [[UIApplication sharedApplication] delegate];
	Developer *d = (Developer *)[appDelegate.developers objectAtIndex:indexPath.row];
    
	[cell setText:d.name];
	
    // Set up the cell
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic -- create and push a new view controller
	DeveloperAppDelegate *appDelegate = (DeveloperAppDelegate *)[[UIApplication sharedApplication] delegate];
	Developer *developer = (Developer *)[appDelegate.developers objectAtIndex:indexPath.row];
	
	if (self.developerView == nil) {
		DeveloperViewController *viewController = [[DeveloperViewController alloc] initWithNibName:@"DeveloperViewController" bundle:[NSBundle mainBundle]];
		self.developerView = viewController;
		[viewController release];
	}
	
	[self.navigationController pushViewController:self.developerView animated:YES];
	self.developerView.title = [developer name]; // TODO check if you can do developer.name
	[self.developerView.developerDescription setText:[developer description]];
}


- (void)viewDidLoad {
    // [super viewDidLoad]; // should this line be commented out;
    // Uncomment the following line to add the Edit button to the navigation bar.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	self.title = @"Developers";
}



// Override to support editing the list
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
		DeveloperAppDelegate *appDelegate = (DeveloperAppDelegate *)[[UIApplication sharedApplication] delegate];
		[appDelegate.developers removeObjectAtIndex:indexPath.row];
		NSLog(@"HEYYYY LOGGGING");
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }   
    if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support conditional editing of the list
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support rearranging the list
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the list
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}


@end

