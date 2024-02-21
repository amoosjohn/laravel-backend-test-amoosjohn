<?php

namespace App\Console\Commands;

use App\Models\Location;
use Illuminate\Console\Command;

class DeleteOddIDLocationsCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'select:me-in';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This command will all the location where the ID is Odd';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @return void
     */
    public function handle()
    {
        $locations = Location::all();
        foreach ($locations as $location) {
            if ($location->id % 2 == 1) {
                $location->delete();
            }
        }
    }
}
