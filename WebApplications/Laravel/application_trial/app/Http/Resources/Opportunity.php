<?php

namespace App\Http\Resources;

use App\Http\Resources\Lookups\Category;
use App\Http\Resources\Lookups\Country;
use App\Models\Models\OpportunityDetail;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class Opportunity extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'category' => new Category($this->category),
            'country' => new Country($this->country),
            'deadline' => $this->deadline->toFormattedDateString(),
            'createdBy' => new User($this->user),
            'organizer' => $this->organizer,
            'opportunityDetails' => new OpportunityDetail($this->detail),
            'createdAt' => new User($this->created_at->toDateTimeString()),
            'updatedAt' => new User($this->created_at->toDateTimeString()),
        ];
    }
}
